-- General settings
vim.o.compatible = false
vim.o.showmatch = true
-- vim.o.ignorecase = true
vim.o.mouse = 'v'
vim.o.incsearch = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.relativenumber = true
vim.o.colorcolumn = '80'
vim.o.wildmode = 'longest,list'
vim.cmd('syntax on')
vim.o.mouse = 'a'
vim.o.clipboard = 'unnamedplus'
vim.cmd('filetype plugin indent on')
vim.cmd('filetype plugin on')
vim.o.cursorline = false
vim.o.ttyfast = true
vim.o.splitright = true
vim.o.splitbelow = true
vim.cmd('syntax enable')

-- Key mappings 
vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true })
vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>n', ':NERDTreeToggle<CR>', { noremap = true, silent = true })

-- Plugin manager setup (using vim-plug)
vim.cmd([[
call plug#begin()
Plug 'dracula/vim'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'mhinz/vim-startify'
call plug#end()
]])

-- Color scheme settings
if vim.fn.has("termguicolors") == 1 then
    vim.o.termguicolors = true
end
vim.cmd('colorscheme dracula')

-- Auto open NERDTree on startup if no files are specified
vim.cmd [[
  autocmd vimenter * if !argc() | NERDTree | endif
]]

-- Close Neovim if NERDTree is the last window open
vim.cmd [[
  autocmd bufenter * if (winnr("$") == 1 && &filetype == "nerdtree") | q | endif
]]

