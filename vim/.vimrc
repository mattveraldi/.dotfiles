:syntax on

"" Enable true colors for schemes to work
if (has('termguicolors'))
  set termguicolors
endif

"" Plugins
call plug#begin('~/.vim/plugged')

Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'eslint/eslint'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'prettier/vim-prettier', {'do': 'npm install', 'for': ['javascript', 'typescript', 'css', 'scss', 'json', 'markdown', 'html']}

call plug#end()

"" Set theme
set guifont=JetBrains\ Mono\ 13
let g:material_terminal_italics = 1
let g:material_theme_style = 'darker-community'
colorscheme material

"" Install coc tsserver for typescript autocompletion
let g:coc_global_extensions = [ 'coc-tsserver' ]

"" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"" Prettier configuration
nmap <Leader>ff <Plug>(Prettier)
