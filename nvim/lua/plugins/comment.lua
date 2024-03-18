
-- C O M M E N T --------------------------------------------------------------

return {

	{ -- comment
		'https://github.com/numToStr/Comment.nvim.git',
		opts = {},
		lazy = false,
		config = function()

			local comment = require('Comment')


			comment.setup {
				-- add a space b/w comment and the line
				padding = false,
				-- whether the cursor should stay at its position
				sticky = true,
				-- lines to be ignored while (un)comment
				ignore = nil,
				-- LHS of toggle mappings in NORMAL mode
				toggler = {
					-- line-comment toggle keymap
					line = 'gcc',
					-- block-comment toggle keymap
					block = 'gbc',
				},
				-- LHS of operator-pending mappings in NORMAL and VISUAL mode
				opleader = {
					-- line-comment keymap
					line = 'gc',
					-- block-comment keymap
					block = 'gb',
				},
				-- LHS of extra mappings
				extra = {
					-- add comment on the line above
					above = 'gcO',
					-- add comment on the line below
					below = 'gco',
					-- add comment at the end of line
					eol = 'gcA',
				},
				-- enable keybindings
				-- NOTE: if given `false` then the plugin won't create any mappings
				mappings = {
					---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
					basic = true,
					---Extra mapping; `gco`, `gcO`, `gcA`
					extra = true,
				},
				---Function to call before (un)comment
				pre_hook = nil,
				---Function to call after (un)comment
				post_hook = nil,
			}

		end
	}, ------------------------------------------------------------------------

}
