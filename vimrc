set nocompatible        " Don't use vi compatibility mode

" ---[ Vundle extension manager ]---

filetype off
set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins here

" ---[ End of Vundle ]---
call vundle#end()
filetype plugin indent on

" Enable mouse
set ttymouse=xterm2
set mouse=a

" Decoration
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
