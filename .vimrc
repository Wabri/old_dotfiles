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
Plug 'davidhalter/jedi-vim'
Plug 'junegunn/goyo.vim'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

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

" This can allow to switch to bash terminal
noremap <C-d> :sh<CR>

" This set the leader of the mapping
let mapleader =" "

" Goyo plugins makes text more readable when you are not writing code
map <leader>f :Goyo \| set linebreak<CR>

" To use the markdown previewer you need to install grip: https://github.com/joeyespo/grip
" and also the xdotool with: apt install xdotool
let vim_markdown_preview_toggle=1
let vim_markdown_preview_hotkey='<C-m>'
let vim_markdown_preview_browser='firefox'
let vim_markdown_preview_github=1
" If the preview shows file not found read this: https://github.com/JamshedVesuna/vim-markdown-preview/issues/56
let vim_markdown_preview_temp_file=1

" This is the nerd tree indicator for git status
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
let g:NERDTreeShowIgnoredStatus = 1
map <C-n> :NERDTreeToggle<CR>
" This will close vim if only nerd tree tab is open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" This is the map to switch between splitted editor
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" This abilitate the copy and paste to clipboard (on debian you need to install: apt install vim-gnome
vnoremap <F4> "+y
map <F5> "+P

" Automatically deletes all end line trailing whitespaces on save
autocmd BufWritePre * %s/\s\+$//e

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
if has('syntax') && has('eval')
  packadd matchit
endif
