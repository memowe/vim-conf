set nocompatible        " Don't use vi compatibility mode

" ---[ Vundle extension manager ]---

filetype off
set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins here

" lean & mean status/tabline for vim that's light as air
Plugin 'vim-airline/vim-airline'

" Fuzzy finder
Plugin 'ctrlpvim/ctrlp.vim'

" Mojolicious embedded template syntax (.ep etc.)
Plugin 'yko/mojo.vim'

" Make vim and tmux work better together
Plugin 'tmux-plugins/vim-tmux-focus-events'

" Syntax Highlight for Vue.js components
Plugin 'posva/vim-vue'

" Support for Perl 5
Plugin 'vim-perl/vim-perl'

" ---[ End of Vundle ]---
call vundle#end()
filetype plugin indent on

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

" Indention
set tabstop=4           " 4 Spaces for a tab
set shiftwidth=4        " Spaces to use with reindent/autoindent
set expandtab           " Insert spaces by hitting tab
set autoindent          " Copy indentation for a new line

" Writing
set showmatch           " Shortly show matching brackets etc.

let mapleader = ","     " Set leader key to , - default is \

" Offer file content reload after it was changed on the disk
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * checktime
