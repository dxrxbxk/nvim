-- T R E E S I T T E R --------------------------------------------------------

-- the metal filetype will use the cpp parser and queries.
vim.treesitter.language.register('cpp', 'metal')


return {

	{ -- treesitter
		'https://github.com/nvim-treesitter/nvim-treesitter.git',
		build = ':TSUpdate',
		dependencies = {
			'https://github.com/nvim-treesitter/playground.git',
		},

		config = function()

			-- require treesitter
			local treesitter = require("nvim-treesitter.configs")

			treesitter.setup {

				-- A list of parser names, or "all"
				ensure_installed = {
					'c', 'cpp', 'bash', 'vim', 'make', 'yaml', 'swift',
					'lua', 'rust', 'markdown', 'ebnf', 'ini', 'json',
					'html', 'css', 'javascript', 'typescript', 'tsx', 'python',
					'go', 'dockerfile', 'toml', 'regex', 'markdown_inline'
				},
				-- install parsers synchronously
				sync_install = false,
				-- automatically install missing parsers
				auto_install = true,

				highlight = {
					-- `false` will disable the whole extension
					enable = true,
					-- disable vim regex highlighting
					additional_vim_regex_highlighting = false
				},

				playground = {
					enable = false,
					disable = {},
					updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
					persist_queries = false, -- Whether the query persists across vim sessions
					keybindings = {
						toggle_query_editor = 'o',
						toggle_hl_groups = 'i',
						toggle_injected_languages = 't',
						toggle_anonymous_nodes = 'a',
						toggle_language_display = 'I',
						focus_language = 'f',
						unfocus_language = 'F',
						update = 'R',
						goto_node = '<cr>',
						show_help = '?',
					},
				},
				query_linter = {
					enable = true,
					use_virtual_text = true,
					lint_events = {"BufWrite", "CursorHold"},
				},
			}

		end

	}, ------------------------------------------------------------------------
}
