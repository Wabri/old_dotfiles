" A vimrc file.
"
" Maintainer:	Gabriele Puliti <gabriele.puliti@gmail.com>
" Last change:	2019 2 28
"
" To use it, copy it to ~/.vimrc

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')
" Declare the list of plugins.
Plug 'potatoesMaster/i3-vim-syntax'
Plug 'tpope/vim-sensible'
Plug 'jreybert/vimagit'
Plug 'junegunn/goyo.vim'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

" Default save to the original file.
set nowritebackup       	
" Do not keep a backup file, use versions instead
set nobackup
" Put the number of the line at the left of the text, with the relative
" distance between the line focused
set number relativenumber       
" Always set autoindenting on
set autoindent			
" Enable autocompletition
set wildmode=longest,list,full  
" Default split to below and right
set splitbelow splitright

" This set the leader of the mapping
let mapleader =" "

" Goyo plugins makes text more readable when you are not writing code
map <leader>f :Goyo \| set linebreak<CR>

" This is the map to switch between splitted editor 
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" This abilitate the copy and paste to clipboard (gvim is needed, to install
" on debian you need to run: apt install vim-gnome
vnoremap <C-c> "+y
map <C-p> "+P

" Automatically deletes all end line trailing whitespaces on save
autocmd BufWritePre * %s/\s\+$//e

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
if has('syntax') && has('eval')
  packadd matchit
endif
