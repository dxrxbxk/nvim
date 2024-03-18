-- L A Z Y  C O N F I G -------------------------------------------------------


-- I N S T A L L --------------------------------------------------------------

-- get lazy path
local path = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

-- clone lazy.nvim if not exists
if not vim.loop.fs_stat(path) then
	vim.fn.system({
		'git', 'clone',
		'--filter=blob:none',
		'https://github.com/folke/lazy.nvim.git',
		-- latest stable release
		'--branch=stable',
		path,
	})
end

-- add lazy to runtime path
vim.opt.rtp:prepend(path)



-- C O N F I G ----------------------------------------------------------------

local config = {

	root = vim.fn.stdpath('data') .. '/lazy',

	defaults = {
		-- lazy loading
		lazy = false,
		version = nil,
		cond = nil
	},
	-- spec are in setup arguments
	spec = nil,
	-- lockfile generated after running update
	lockfile = vim.fn.stdpath('config') .. '/lazy-lock.json',


	install = {
		-- install missing plugins on startup
		missing = true,
		-- startup colorscheme
		colorscheme = { '' },
	},
	ui = {
		-- a number <1 is a percentage., >1 is a fixed size
		size = {
			width = 0.6,
			height = 0.6
		},

		-- wrap the lines in the ui
		wrap = true,

		-- The border to use for the UI window. Accepts same border values as |nvim_open_win()|.
		border = 'rounded',

		title = 'lazy', ---@type string only works when border is not "none"

		title_pos = "center", ---@type "center" | "left" | "right"

		-- Show pills on top of the Lazy window
		pills = true, ---@type boolean

		icons = {
			cmd = " ",
			config = "",
			event = "",
			ft = " ",
			init = " ",
			import = " ",
			keys = " ",
			lazy = "󰒲 ",
			loaded = "●",
			not_loaded = "○",
			plugin = " ",
			runtime = " ",
			require = "󰢱 ",
			source = " ",
			start = "",
			task = "✔ ",
			list = {
				"●",
				"➜",
				"★",
				"‒",
			},
		},
	},

	checker = {
		-- automatically check for plugin updates
		enabled = false,
		-- set to 1 to check for updates very slowly
		concurrency = nil,
		-- get a notification when new updates are found
		notify = true,
		-- check for updates every hour
		frequency = 3600,
	},

	change_detection = {
		-- automatically check for config file changes and reload the ui
		enabled = true,
		-- get a notification when changes are found
		notify = true,
	},

	custom_keys = {

		-- close Lazy window
		--['<esc>'] = '<cmd>q<cr>',

	},

	--checker = { enabled = true },
	performance = {
		cache  = {
			enable = true
		},
		rtp = {
			-- reset the package path to improve startup time
			reset_packpath = true,
			-- add any custom paths here that you want to includes in the rtp
			path = {},
			disabled_plugins = {
				'gzip',
				'matchit',
				'netrwPlugin',
				'tarPlugin',
				'tohtml',
				'tutor',
				'zipPlugin'
			}
		},
	}

}


-- load lazy
local lazy = require('lazy')

-- setup lazy
lazy.setup("plugins", config)

-- lazy keymap
--vim.keymap.set('n', '<leader>z', '<cmd>Lazy<cr>', { desc = 'plugin manager' })
