--return {
--
--	{  -- copilot
--		'https://github.com/github/copilot.vim.git',
--
--		config = function()
--
--			-- 
--			
--			vim.g.copilot_filetypes = {
--				['*'] = true
--			}
--
--
--			-- 
--
--		end
--	}, ------------------------------------------------------------------------
--
--}


-- C O P I L O T --------------------------------------------------------------

return {

	{  -- copilot
		'https://github.com/zbirenbaum/copilot.lua.git',

		config = function()

			local active = true

			-- get the copilot module
			local copilot    = require('copilot')

			-- get the suggestion module
			local suggestion = require("copilot.suggestion")

			copilot.setup({
				-- desactivate copilot panel
				panel = {
					enabled = false,
					auto_refresh = false,
					keymap = {
						jump_prev = false,
						jump_next = false,
						accept    = false,
						refresh   = false,
						open      = false
					},
				},
				-- enable copilot suggestion
				suggestion = {
					enabled = active,
					auto_trigger = active,
					debounce = 10, -- old value 100
					keymap = {
						accept      = false,
						accept_word = false,
						accept_line = false,
						next        = false,
						prev        = false,
						dismiss     = false,
					},
				},
				filetypes = {
					["*"] = true, -- disable for all other filetypes and ignore default `filetypes`
				},
				copilot_node_command = 'node', -- Node.js version must be > 16.x
				server_opts_overrides = {},
			})

			-- check if copilot is visible for remap 'right' key to accept suggestion

			vim.keymap.set('i', '<Right>', function()
				if suggestion.is_visible() then
					suggestion.accept()
				else
					vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<Right>', true, true, true), 'n', true)
				end
			end, {noremap = true, silent = true})


			-- check if copilot is visible for remap 'left' key to dismiss suggestion

			vim.keymap.set('i', '<Left>', function()
				if suggestion.is_visible() then
					suggestion.dismiss()
				else
					vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<Left>', true, true, true), 'n', true)
				end
			end, {noremap = true, silent = true})


			-- check if copilot is visible for remap 'up' key to prev suggestion

			vim.keymap.set('i', '<Up>', function()
				if suggestion.is_visible() then
					suggestion.prev()
				else
					vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<Up>', true, true, true), 'n', true)
				end
			end, {noremap = true, silent = true})


			-- check if copilot is visible for remap 'down' key to next suggestion

			vim.keymap.set('i', '<Down>', function()
				if suggestion.is_visible() then
					suggestion.next()
				else
					vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<Down>', true, true, true), 'n', true)
				end
			end, {noremap = true, silent = true})


			-- check if copilot is visible for remap 'enter' key to accept word suggestion

			vim.keymap.set('i', '<CR>', function()
				if suggestion.is_visible() then
					suggestion.accept_word()
				else
					vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<CR>', true, true, true), 'n', true)
				end
			end, {noremap = true, silent = true})


		end

	}, ------------------------------------------------------------------------

}
