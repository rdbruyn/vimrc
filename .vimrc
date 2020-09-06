set nocompatible
filetype off

" Vundle plugin stuff
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-latex/vim-latex'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'airblade/vim-gitgutter'
Plugin 'jnurmine/Zenburn'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'mattn/emmet-vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'rhysd/vim-grammarous'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'Raimondi/delimitMate'
Plugin 'suan/vim-instant-markdown', {'rtp': 'after'}
Plugin 'altercation/vim-colors-solarized'
Plugin 'chriskempson/base16-vim'
Plugin 'dracula/vim'
Plugin 'drewtempelmeyer/palenight.vim'

call vundle#end()
filetype plugin indent on
filetype indent on

let g:Powerline_symbols='fancy'
set guifont=Inconsolata\ for\ Powerline\ Medium\ 15

" These lines remove function previews within vim
" autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" This is to enable proper loading of vim-latex
filetype plugin on
let g:tex_flavor='latex'
" Set vim-latex compiler setting
let g:Tex_MultipleCompileFormats='pdf'
let g:Tex_DefaultTargetFormat='pdf'
" let g:Tex_CompileRule_pdf='pdflatex --shell-escape -interaction=nonstopmode $*'
let g:Tex_CompileRule_pdf='arara -v $*'

let g:SimpylFold_docstring_preview=1
let g:python_highlight_all=1
syntax on

" Instant markdown settings
let g:instant_markdown_slow = 1

set nu
" Load colorscheme
" set t_Co=256
set background=dark
colorscheme palenight
