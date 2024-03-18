-- C O L O R S ----------------------------------------------------------------

-- set colorscheme
vim.opt_global.termguicolors = true

-- enable syntax highlighting
vim.opt_global.syntax = 'on'


-- E N C O D I N G ------------------------------------------------------------

-- set encoding
vim.opt.encoding = 'utf-8'


-- M O U S E ------------------------------------------------------------------

-- disable mouse
-- vim.opt.mouse = ''


-- C L I P B O A R D ----------------------------------------------------------

-- use system clipboard
vim.opt.clipboard = 'unnamedplus'


-- M A N  P A G E S -----------------------------------------------------------

-- do not create mappings in man pages buffer
--vim.g.no_man_maps = 0
--vim.g.man_hardwrap = 0


-- C U R S O R ----------------------------------------------------------------

-- normal: block
-- insert: line
-- visual: block
-- visual line: line
-- cmdline: line

vim.opt.guicursor = 'n-sm:block,i-c-ci:ver25,v-ve-o-r-cr:hor25'


-- C O M P L E T I O N --------------------------------------------------------

-- should be before nvim-comp plugin
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

-- I N D E N T A T I O N ------------------------------------------------------

-- auto-indent
vim.opt.autoindent = true

-- smart indent
vim.opt.smartindent = true

-- c indenting
vim.opt.cindent = true

-- insert tabs instead of spaces
vim.opt.expandtab = false

-- length of a tab
vim.opt.tabstop = 4

-- number of spaces when auto-indenting
vim.opt.shiftwidth = 4

-- number of spaces when tab is pressed
vim.opt.softtabstop = 4

-- round indent to multiple of shiftwidth
vim.opt.shiftround = true



-- D I S P L A Y --------------------------------------------------------------

-- show line numbers
vim.opt.number = true

-- show relative line numbers
vim.opt.relativenumber = true

-- show cursor line
vim.opt.cursorline = true

-- don't display mode
vim.opt.showmode = false

-- show cmd
vim.opt.showcmd = true

-- lazy redraw
--vim.opt.lazyredraw = true

-- sign column
vim.opt.signcolumn = 'number'

-- scroll offset
vim.opt.scrolloff = 50

-- no wrap
vim.opt.wrap = false

-- no linebreak
vim.opt.linebreak = false

-- no errorbells
vim.opt.errorbells = false

-- no visualbell
vim.opt.visualbell = false



-- M E N U S ------------------------------------------------------------------

-- max items in menu
vim.opt.pumheight = 10

vim.opt.pumblend = 5


-- T I M I N G ----------------------------------------------------------------

-- timeoutlen
--vim.opt.timeoutlen = 300

-- ttimeoutlen
--vim.opt.ttimeoutlen = 0

-- updatetime
--vim.opt.updatetime = 200


-- S E A R C H ----------------------------------------------------------------

-- ignore case when searching
vim.opt.ignorecase = true

-- smart case when searching
vim.opt.smartcase = true

-- no highlight after search
vim.opt.hlsearch = false

-- move to the next match while typing
vim.opt.incsearch = true


-- F I L E S ------------------------------------------------------------------

-- hidden buffers
vim.opt.hidden = true

-- auto read
vim.opt.autoread = true

-- no save backup
vim.opt.backup = false

-- no swap file
vim.opt.swapfile = false



-- M O D E S ------------------------------------------------------------------

-- backspace (indent, eol, start)
vim.opt.backspace = 'indent,eol,start'




-- W O R D S ------------------------------------------------------------------

-- '_' is a not a word character
vim.opt.iskeyword = vim.opt.iskeyword - '_'



-- S H E L L ------------------------------------------------------------------

-- shell
-- get shell from env
vim.opt.shell = vim.fn.getenv('SHELL')


-- P Y T H O N ----------------------------------------------------------------

vim.g.python3_host_prog = '/usr/bin/python3'




-- M A T C H I N G ------------------------------------------------------------

-- show matchpairs
vim.opt.showmatch = false

-- highlight matching brackets
vim.opt.matchpairs = '(:),{:},[:],<:>'




-- number bases
vim.opt.nrformats = 'alpha,octal,hex,bin'


-- fillchars
vim.opt.fillchars = 'vert:│,fold:·,eob: ,diff:∙,msgsep:‾,foldopen:▾,foldsep:│,foldclose:▸'




-- L I S T  C H A R A C T E R S -----------------------------------------------

-- enable list
vim.opt.list = true

-- listchars
vim.opt.listchars  = 'tab:..,trail:•,extends:»,precedes:«,nbsp:␣,eol: ,conceal:┊,space: '




-- S T A T U S  L I N E -------------------------------------------------------

-- global statusline
vim.opt.laststatus = 3

-- statusline
vim.opt.statusline = '%f %= %{g:colors_name} %04l %04L %y %{&ff} %{&fenc} %<%{strftime("%H:%M:%S")} %{&eol?" ":"-"}'






-- L E A D E R  K E Y ---------------------------------------------------------

local lead = ';'

--vim.keymap.set({ 'n', 'v' }, lead, '<nop>')

-- leader
vim.g.mapleader = lead
