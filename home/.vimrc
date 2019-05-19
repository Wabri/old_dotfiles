" A vimrc file.
"
" Maintainer:	Gabriele Puliti <gabriele.puliti@gmail.com>
" Alias: Wabri (https://github.com/Wabri)
" Last change:	2019 5 19
"
" To use it, copy it to ~/.vimrc

" Plugins will be downloaded under the specified directory.
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
" Declare the list of plugins.
Plug 'potatoesMaster/i3-vim-syntax'
Plug 'tpope/vim-sensible'
Plug 'jreybert/vimagit'
Plug 'davidhalter/jedi-vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-signify'
Plug 'sheerun/vim-polyglot'
Plug 'nanotech/jellybeans.vim', { 'tag': 'v1.6' }
Plug 'luochen1990/rainbow'
Plug 'matze/vim-move'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Theme by jellybeans
colorscheme jellybeans

" abilitate rainbow parentesis syntax
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

" vim move key
let g:move_key_modifier = 'C'

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

" Powerline
let g:airline_theme='wombat'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
if !exists('g:airline_powerline_fonts')
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline_left_sep          = '▶'
  let g:airline_left_alt_sep      = '»'
  let g:airline_right_sep         = '◀'
  let g:airline_right_alt_sep     = '«'
  let g:airline#extensions#branch#prefix     = '➔' "➔, ➥, ⎇
  let g:airline#extensions#readonly#symbol   = '⊘'
  let g:airline#extensions#linecolumn#prefix = '¶'
  let g:airline#extensions#paste#symbol      = 'ρ'
  let g:airline_symbols.linenr    = '␊'
  let g:airline_symbols.branch    = '⎇'
  let g:airline_symbols.paste     = 'ρ'
  let g:airline_symbols.paste     = 'Þ'
  let g:airline_symbols.paste     = '∥'
  let g:airline_symbols.whitespace = 'Ξ'
else
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
endif

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
vnoremap <F2> "+y
map <F3> "+P

" Automatically deletes all end line trailing whitespaces on save
autocmd BufWritePre * %s/\s\+$//e

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
if has('syntax') && has('eval')
  packadd matchit
endif
