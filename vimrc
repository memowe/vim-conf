set nocompatible                    " Don't use vi compatibility mode

" Enable mouse
set ttymouse=xterm2
set mouse=a

" Package manager
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" Decoration
syntax on               " Enable syntax highlighting
set number              " Show line numbers
set visualbell          " Use visual bell
set ruler               " Show some info at the bottom
set showcmd             " Show command in the last line of the screen
set linespace=1         " Extra line space

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
let perl_sub_signatures = 1

" Additional file types
au BufRead,BufNewFile *.md set filetype=markdown

" File browser (inspired by NERDtree, see https://shapeshed.com/vim-netrw/)
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END
