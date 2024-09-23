vim.o.showmatch = true
vim.o.ignorecase = true
vim.o.mouse = v
vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.tabstop = 4
vim.o.softtabstop=4
vim.o.autoindent = true
vim.o.shiftwidth = 4
vim.o.smartindent = true
vim.o.number = true
vim.o.syntax = on
vim.o.wildmode = longest,list 
vim.o.mouse = a
vim.o.clipboard = unnamedplus
vim.o.cursorline = true

local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('folke/tokyonight.nvim')
Plug('mnjm/topline.nvim')
Plug('nvim-lualine/lualine.nvim')
Plug('nvim-tree/nvim-web-devicons')
Plug('sindrets/diffview.nvim')
Plug('j-hui/fidget.nvim')
Plug('petertriho/nvim-scrollbar')
--Plug('folke/noice.nvim')
--Plug('folke/neodev.nvim')
--Plug('kevinhwang91/nvim-ufo')
Plug('kevinhwang91/promise-async')
--Plug('neoclide/coc.nvim')

vim.call('plug#end')

vim.cmd 'colorscheme tokyonight-night'
vim.o.showtabline = 2

require('topline').setup()
require('lualine').setup()
require('fidget').setup()
require('scrollbar').setup()
--require('noice').setup()
--require('neodev').setup()

--vim.o.foldcolumn = '1'
--vim.o.foldlevel = 99 
--vim.o.foldlevelstart = 99
--vim.o.foldenable = true

--vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
--vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)

-- Option 1: coc.nvim as LSP client
--use {'neoclide/coc.nvim', branch = 'master', run = 'yarn install --frozen-lockfile'}
--require('ufo').setup()

