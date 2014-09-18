set shell=/bin/bash
set nocompatible

" required vundle setup
filetype off
set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" ctrlp
Plugin 'kien/ctrlp.vim'

" nerdtree
Plugin 'scrooloose/nerdtree'

autocmd stdinreadpre * let s:std_in=1
autocmd vimenter * if argc() == 0 && !exists("s:std_in") | nerdtree | endif

map <c-n> :nerdtreetoggle<cr>

autocmd bufenter * if (winnr("$") == 1 && exists("b:nerdtreetype") && b:nerdtreetype == "primary") | q | endif

" bufexplorer
Plugin 'jlanzarotta/bufexplorer'

" vim-sensible
Plugin 'tpope/vim-sensible'

" ack
Plugin 'mileszs/ack.vim'

" ag
Plugin 'rking/ag.vim'

map <leader>a :ag!<space>
map <leader>a :ag! <c-r><c-w><cr>

" use ag for search, it's much faster than ack.
" see https://github.com/ggreer/the_silver_searcher
" on mac: brew install the_silver_searcher
let g:agprg = 'ag --nogroup --nocolor --column --smart-case'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" improved javascript indentation
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

call vundle#end()

filetype plugin indent on
syntax on
set relativenumber
