filetype off          
filetype plugin indent on   
syntax on
set nocompatible     

set nu
set t_Co=256
set tabstop=2
set softtabstop=2
set shiftwidth=2
set laststatus=2

set rtp+=~/.vim/bundle/Vundle.vim

" Using vundle to manage plugins
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

call vundle#end()            


colorscheme zenburn

" Set shortcut to toggle side menu
map <C-o> :NERDTreeToggle<CR>

let g:nerdtree_tabs_open_on_console_startup = 1

" Set a different theme to lightline 
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

" Set copy/paste in system clipboard
" Need vim-gtk system package to be installed
set clipboard=unnamed

