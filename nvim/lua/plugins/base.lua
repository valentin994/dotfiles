vim.opt.nu = true
vim.opt.relativenumber = true
 
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.hlsearch = false 
vim.opt.incsearch = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.g.mapleader = " "

vim.cmd[[colorscheme nord]]

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- Coc remap
vim.cmd([[inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"]])
vim.cmd([[inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"]])
vim.cmd([[inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"]])
