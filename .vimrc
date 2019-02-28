" A vimrc file.
"
" Maintainer:	Gabriele Puliti <gabriele.puliti@gmail.com>
" Last change:	2019 2 28
"
" To use it, copy it to ~/.vimrc

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

set nowritebackup       " Default save to the original file.
set nobackup		" Do not keep a backup file, use versions instead
set number              " Put the number of the line at the left of the text
set autoindent		" Always set autoindenting on

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
if has('syntax') && has('eval')
  packadd matchit
endif
