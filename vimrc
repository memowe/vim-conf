set nocompatible                    " Don't use vi compatibility mode

" Package manager
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" Decoration
syntax on                           " Enable syntax highlighting
set number                          " Show line numbers
set visualbell                      " Use visual bell
set ruler               " Show some info at the bottom
set showcmd             " Show command in the last line of the screen

" Um...
set backspace=indent,eol,start 

" Indention
set tabstop=4           " 4 Spaces for a tab
set shiftwidth=4        " Spaces to use with reindent/autoindent
set expandtab           " Insert spaces by hitting tab
set autoindent          " Copy indentation for a new line

" Writing
set showmatch           " Shortly show matching brackets etc.

" File type detection
filetype on
filetype plugin on
filetype indent on

let mapleader = ","

" Perl
let perl_fold = 1
let perl_fold_blocks = 1
let perl_nofold_packages = 1

" Additional file types
au BufRead,BufNewFile *.md set filetype=markdown
