local keymap = vim.keymap.set

-- M A P P I N G S ------------------------------------------------------------

-- telescope ------------------------------------------------------------------

-- main menu
keymap('n', '<leader>t', '<cmd>Telescope<cr>')

-- find files
keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>')

-- telescope git files
keymap('n', '<leader>gf', '<cmd>Telescope git_files<cr>')

-- telescope man pages
keymap('n', '<leader>m', '<cmd>Telescope man_pages<cr>')

-- telescope grep string
keymap('n', '<leader>gs', '<cmd>Telescope grep_string<cr>')

-- telescope live grep
keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')

-- telescope buffers
keymap('n', '<leader>b', '<cmd>Telescope buffers<cr>')

-- window resizing ------------------------------------------------------------

-- unmap enter ----------------------------------------------------------------

keymap('n', '<CR>', '<nop>')

-- tabs -----------------------------------------------------------------------

-- unmap recording
keymap('n', 'q', '<nop>')
keymap('n', 'Q', '<nop>')
-- new tab
keymap('n', 'q', '<cmd>tabnew<cr>')
-- next tab
--keymap('n', '<Tab>', '<cmd>tabnext<cr>')
-- previous tab
--keymap('n', '<S-Tab>', '<cmd>tabprevious<cr>')


-- buffers --------------------------------------------------------------------

-- buffer next
keymap('n', '<S-k>', '<cmd>bnext<cr>')
-- buffer previous
keymap('n', '<S-i>', '<cmd>bprevious<cr>')
-- switch to definition / declaration
keymap('n', '<leader>.', '<C-]>')
-- back to previous position
keymap('n', '<leader>,', '<C-t>')

-- disable 'gc' for comment.lua plugin
keymap('n', 'gc', '<Nop>')

-- disable 'gb' for comment.lua plugin
keymap('n', 'gb', '<Nop>')
