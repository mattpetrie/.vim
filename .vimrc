set nocompatible

" Required Vundle setup
filetype off
set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin  'gmarik/Vundle.vim'

" CtrlP
Bundle 'kien/ctrlp.vim'

" NERDTree
Plugin 'scrooloose/nerdtree'

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-n> :NERDTreeToggle<CR>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" bufexplorer
Plugin 'jlanzarotta/bufexplorer'

" vim-sensible
Plugin 'tpope/vim-sensible'

" Ack
Plugin 'mileszs/ack.vim'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Improved javascript indentation
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'pangloss/vim-javascript'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim Git runtime files
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'tpope/vim-git'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim runtime files for Haml, Sass, and SCSS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'tpope/vim-haml'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim runtime files for Slim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'slim-template/vim-slim'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " Vim Markdown runtime files
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'tpope/vim-markdown'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim handlebars runtime files
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'nono/vim-handlebars'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax for jquery keywords and selectors
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'itspriddle/vim-jquery'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim syntax for jst files
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'jeyb/vim-jst'

" Coffeescript runtime files
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'kchmck/vim-coffee-script'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Updated ruby syntax and such
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'vim-ruby/vim-ruby'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax highlighting for Gemfile
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'tpope/vim-bundler'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Some syntax highlighthing for rails and :Rextract to extract partials
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'tpope/vim-rails'

filetype plugin indent on
syntax on
