set nocompatible 
set encoding=utf-8

let mapleader="\<Space>"

syntax on 
set termguicolors
set hidden
set noswapfile
set nohlsearch
set relativenumber
set number
set scrolloff=4
set ruler
set showcmd
set updatetime=500				
set backspace=indent,eol,start
set tabstop=4
set shiftwidth=4
set expandtab

lua require('plugins')
lua require('lsp')
lua require('completion')

set completeopt=menu,menuone,noselect
"setlocal spell spelllang=en_us
colorscheme dracula

nnoremap <leader>so :source $MYVIMRC<cr>
nnoremap <leader>vr :e $MYVIMRC<cr>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fo <cmd>Telescope oldfiles<cr>

nnoremap <leader>gs :Git<cr>
noremap <leader>cf :lua vim.lsp.buf.formatting_sync()<cr>
set mouse=a
