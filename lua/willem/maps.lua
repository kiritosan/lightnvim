local keymap = vim.keymap
local g = vim.g
local opt = vim.opt

-- ## configuration ##
g.mapleader = ','

-- ##### insert mode #####
-- implement experience of vim
keymap.set('i', "jk", "<ESC>")
keymap.set('i', "kj", "<ESC>")
keymap.set('i', "<C-s>", "<ESC>:w<CR>")
-- go to beginning and end
keymap.set('i', "<C-a>", "<ESC>^i")
keymap.set('i', "<C-e>", "<End>")
-- navigate within insert mode
keymap.set('i', '<C-j>', '<Down>')
keymap.set('i', '<C-k>', '<Up>')
keymap.set('i', '<C-h>', '<Left>')
keymap.set('i', '<C-l>', '<Right>')

-- ##### visual mode #####
-- Stay in indent mode
keymap.set('v', '<', '<gv')
keymap.set('v', '>', '>gv')

-- ##### normal mode #####
-- clear highlight
keymap.set('n', '<ESC>', '<cmd> noh <CR>')
keymap.set('n', '<CR>', ':noh<CR><CR>')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')
-- save current buffer
keymap.set('n', '<C-s>', ':w<CR>')
-- powerful Substitude
keymap.set('n', 'S', 'ciw<C-r>0<ESC>')

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- ##### window manipulation #####
-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')
keymap.set('n', 'sq', ':q<Return>') -- CR equals to Return

-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')
-- Resize window with arrows
keymap.set('n', '<C-up>', '<C-w>+')
keymap.set('n', '<C-down>', '<C-w>-')
keymap.set('n', '<C-left>', '<C-w>>')
keymap.set('n', '<C-right>', '<C-w><')
-- keymap.set("n", "<C-Up>", ":resize +2<CR>")
-- keymap.set("n", "<C-Down>", ":resize -2<CR>")
-- keymap.set("n", "<C-Left>", ":vertical resize +2<CR>")
-- keymap.set("n", "<C-Right>", ":vertical resize -2<CR>")

-- ##### Navigate buffers #####
keymap.set('n', '<A-h>', ':bprevious<CR>')
keymap.set('n', '<A-l>', ':bnext<CR>')

-- ##### tab manipulation #####
-- New tab
keymap.set('n', 'te', ':tabedit ')
keymap.set('n', '<S-h>', ':tabprevious<CR>')
keymap.set('n', '<S-l>', ':tabnext<CR>')

-- ######################## configuration ##########################

-- opt.laststatus = 3 -- global statusline
-- opt.showmode = false

-- opt.title = true
-- opt.clipboard = "unnamedplus"
-- opt.cursorline = true

-- -- Indenting
-- opt.expandtab = true
-- opt.shiftwidth = 2
-- opt.smartindent = true
-- opt.tabstop = 2
-- opt.softtabstop = 2

-- opt.fillchars = { eob = " " }
-- opt.ignorecase = true
-- opt.smartcase = true
-- opt.mouse = "a"

-- -- Numbers
-- opt.number = true
-- opt.numberwidth = 2
-- opt.ruler = false

-- -- disable nvim intro
-- opt.shortmess:append "sI"

-- opt.signcolumn = "yes"
-- opt.splitbelow = true
-- opt.splitright = true
-- opt.termguicolors = true
-- opt.timeoutlen = 400
-- opt.undofile = true

-- -- interval for writing swap file to disk, also used by gitsigns
-- opt.updatetime = 250

-- -- go to previous/next line with h,l,left arrow and right arrow
-- -- when cursor reaches end/beginning of line
-- opt.whichwrap:append "<>[]hl"


---------------------------------------------------------------------------------------------------+
-- Commands \ Modes | Normal | Insert | Command | Visual | Select | Operator | Terminal | Lang-Arg |
-- ================================================================================================+
-- map  / noremap   |    @   |   -    |    -    |   @    |   @    |    @     |    -     |    -     |
-- nmap / nnoremap  |    @   |   -    |    -    |   -    |   -    |    -     |    -     |    -     |
-- map! / noremap!  |    -   |   @    |    @    |   -    |   -    |    -     |    -     |    -     |
-- imap / inoremap  |    -   |   @    |    -    |   -    |   -    |    -     |    -     |    -     |
-- cmap / cnoremap  |    -   |   -    |    @    |   -    |   -    |    -     |    -     |    -     |
-- vmap / vnoremap  |    -   |   -    |    -    |   @    |   @    |    -     |    -     |    -     |
-- xmap / xnoremap  |    -   |   -    |    -    |   @    |   -    |    -     |    -     |    -     |
-- smap / snoremap  |    -   |   -    |    -    |   -    |   @    |    -     |    -     |    -     |
-- omap / onoremap  |    -   |   -    |    -    |   -    |   -    |    @     |    -     |    -     |
-- tmap / tnoremap  |    -   |   -    |    -    |   -    |   -    |    -     |    @     |    -     |
-- lmap / lnoremap  |    -   |   @    |    @    |   -    |   -    |    -     |    -     |    @     |
---------------------------------------------------------------------------------------------------+
-- Modes
--   normal_mode = "n"
--   insert_mode = "i"
--   visual_mode = "v"
--   visual_block_mode = "x"
--   term_mode = "t"
--   command_mode = "c"
