set nocompatible 

set encoding=utf-8

let mapleader="\<Space>"
" let localleader="\\"

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
set tabstop=2
set shiftwidth=2
set expandtab

lua require('plugins')
lua require('linter')
"lua require('nvim_tree')
lua require('telescope').load_extension('projects')
"lua require('lsp')
"lua require('completion')
"lua require('pythonlsp')

set completeopt=menu,menuone,noselect
set clipboard=unnamedplus
" set clipboard=unnamedplus
set mouse=a
"setlocal spell spelllang=en_us
colorscheme dracula

nnoremap <leader>so :source $MYVIMRC<cr>
nnoremap <leader>vr :e $MYVIMRC<cr>
command Plug :e ~/.config/nvim/lua/plugins.lua

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
" nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fo <cmd>Telescope oldfiles<cr>
nnoremap <leader>fm <cmd>Telescope marks<cr>
nnoremap <leader>pp <cmd>Telescope projects<cr>

" nnoremap <leader>dq <cmd>lua vim.lsp.diagnostic.set_qflist()<CR> 
" nnoremap <leader>dn <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
" nnoremap <leader>dp <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>

nnoremap <leader>gs :Git<cr>
noremap <leader>cf :lua vim.lsp.buf.formatting_sync()<cr>

" coc setup
nmap <silent> <leader>dp <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>dn <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" xmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)
nnoremap <leader>qf :lua vim.diagnostic.setqflist()<cr>
" nnoremap <leader>r :NvimTreeRefresh<CR>
" nnoremap <leader>n :NvimTreeFindFile<CR>
" autocmd FileType python set foldmethod=expr
noremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
let g:ranger_map_keys = 0
nnoremap <localleader>n :NERDTree<cr>
nnoremap <localleader>r :NERDTreeFind<cr>
nnoremap <leader>e :NERDTreeToggle<CR>
nnoremap <localleader>f :Ranger<cr>

command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
vnoremap <localleader>f  <Plug>(coc-format-selected)
nnoremap <localleader>f  <Plug>(coc-format-selected)
