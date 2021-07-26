set nocompatible        " Don't use vi compatibility mode

" ---[ Plugin manager ]---

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
endif

" Install missing plugins on startup

call plug#begin('~/.vim/plugged')
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

" ---[ Plugins ]---

" lean & mean status/tabline for vim that's light as air
Plug 'vim-airline/vim-airline'

" Fuzzy finder
Plug 'ctrlpvim/ctrlp.vim'

" Mojolicious embedded template syntax (.ep etc.)
Plug 'yko/mojo.vim'

" Make vim and tmux work better together
Plug 'tmux-plugins/vim-tmux-focus-events'

" Syntax Highlight for Vue.js components
Plug 'posva/vim-vue'

" Support for Perl 5
Plug 'vim-perl/vim-perl'

" ---[ End of Plugins ]---
call plug#end()

" Enable mouse
set ttymouse=xterm2
set mouse=a

" Decoration
colorscheme morning     " Light stuff, works on background=dark and light
syntax on               " Enable syntax highlighting
set number              " Show line numbers
set visualbell          " Use visual bell
set ruler               " Show some info at the bottom
set showcmd             " Show command in the last line of the screen

" Make backspace behave like almost everywhere else
set backspace=indent,eol,start 

" Filetype plugin and indentation detection
filetype plugin indent on

" Indention
set tabstop=4           " 4 Spaces for a tab
set shiftwidth=4        " Spaces to use with reindent/autoindent
set expandtab           " Insert spaces by hitting tab
set autoindent          " Copy indentation for a new line

" Writing
set showmatch           " Shortly show matching brackets etc.

let mapleader = ","     " Set leader key to , - default is \

" Avoid esc: in input mode, use jk or kj fast
inoremap jk <Esc>
inoremap kj <Esc>

" Offer file content reload after it was changed on the disk
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * checktime

" Tweak the file browser (most use cases: :Vexplore)
let g:netrw_banner = 0          " No banner (I to toggle)
let g:netrw_liststyle = 3       " Tree view as default (i to switch)
let g:netrw_browse_split = 4    " Open in new horizontal split by default
let g:netrw_altv = 1            "
let g:netrw_winsize = 25        " Column width
