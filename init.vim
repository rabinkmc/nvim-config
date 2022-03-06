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
lua require('lsp')
" lua require('telescope').load_extension('fzf')
lua require('completion')
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
nnoremap <leader>gf <cmd>Telescope git_files<cr>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>lg <cmd>Telescope live_grep<cr>
nnoremap <leader>tb <cmd>Telescope buffers<cr>
" nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>to <cmd>Telescope oldfiles<cr>
nnoremap <leader>tm <cmd>Telescope marks<cr>
nnoremap <leader>tp <cmd>Telescope projects<cr>

" nnoremap <leader>dq <cmd>lua vim.lsp.diagnostic.set_qflist()<CR> 
" nnoremap <leader>dn <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
" nnoremap <leader>dp <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>

nnoremap <leader>gs :Git<cr>
noremap <leader>fs :lua vim.lsp.buf.formatting_sync()<cr>

" coc setup
" nmap <silent> <leader>dp <Plug>(coc-diagnostic-prev)
" nmap <silent> <leader>dn <Plug>(coc-diagnostic-next)

" GoTo code navigation.
" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gr <Plug>(coc-references)
" nmap <leader>rn <Plug>(coc-rename)

" xmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)
nnoremap <leader>qf :lua vim.diagnostic.setqflist()<cr>
" nnoremap <leader>r :NvimTreeRefresh<CR>
" nnoremap <leader>n :NvimTreeFindFile<CR>
" autocmd FileType python set foldmethod=expr
" noremap <silent> K :call <SID>show_documentation()<CR>
" function! s:show_documentation()
"   if (index(['vim','help'], &filetype) >= 0)
"     execute 'h '.expand('<cword>')
"   elseif (coc#rpc#ready())
"     call CocActionAsync('doHover')
"   else
"     execute '!' . &keywordprg . " " . expand('<cword>')
"   endif
" endfunction
let g:ranger_map_keys = 0
nnoremap <localleader>n :NERDTree<cr>
nnoremap <localleader>f :NERDTreeFind<cr>
nnoremap <leader>e :NERDTreeToggle<CR>
nnoremap <localleader>r :Ranger<cr>

vnoremap <localleader>cf  <Plug>(coc-format-selected)
nnoremap <localleader>cf  <Plug>(coc-format-selected)
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
nnoremap <leader>tgc :Telescope git_commits<cr>
nnoremap <leader>tcc :Telescope commands<cr>

"error format python  
autocmd FileType python set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
let test#strategy="dispatch"
nnoremap <leader>vt :Telescope find_files cwd=~/.config/nvim/<cr>
" let g:aniseed#env = v:true
