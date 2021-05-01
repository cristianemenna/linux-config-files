set nocompatible      " Nécessaire
filetype off          " Nécessaire
syntax on
set number

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

"Plugin 'gmarik/Vundle.vim'  Nécessaire "
Plugin 'VundleVim/Vundle.vim'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

call vundle#end()            " Nécessaire
filetype plugin indent on    " Nécessaire
colorscheme zenburn

map <C-o> :NERDTreeToggle<CR>

let g:nerdtree_tabs_open_on_console_startup = 1

" Set a different theme to lightline "
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

set nu
set t_Co=256
set tabstop=2
set softtabstop=2
set shiftwidth=2
set laststatus=2

