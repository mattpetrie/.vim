set shell=/bin/bash
set nocompatible

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use , for leader key
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","

" required vundle setup
filetype off
set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Powerline for status line
" Powerline system installation instructions:
" https://powerline.readthedocs.org/
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic syntax linting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'scrooloose/syntastic'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fugitive
"
" Git in vim, use ,gs for git status then - to stage then C to commit
" check :help Gstatus for more keys
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'tpope/vim-fugitive'

map <leader>gs :Gstatus<cr>
map <leader>gc :Gcommit<cr>
map <leader>ga :Git add --all<cr>:Gcommit<cr>
map <leader>gb :Gblame<cr>

" Use j/k in status
function! BufReadIndex()
  setlocal cursorline

  nnoremap <buffer> <silent> j :call search('^#\t.*','W')<Bar>.<CR>
  nnoremap <buffer> <silent> k :call search('^#\t.*','Wbe')<Bar>.<CR>
endfunction
autocmd BufReadCmd  *.git/index exe BufReadIndex()
autocmd BufEnter    *.git/index silent normal gg0j

" Start in insert mode for commit
function! BufEnterCommit()
  normal gg0
  if getline('.') == ''
    start
  end
endfunction
autocmd BufEnter    *.git/COMMIT_EDITMSG  exe BufEnterCommit()

" Automatically remove fugitive buffers
autocmd BufReadPost fugitive://* set bufhidden=delete

" Eunuch
Plugin 'tpope/vim-eunuch'

" Gitgutter
Plugin 'airblade/vim-gitgutter'
let g:gitgutter_sign_column_always = 1
let g:gitgutter_realtime = 750
highlight clear SignColumn

" Play Rogue!
Plugin 'katono/rogue.vim'

" ctrlp
Plugin 'kien/ctrlp.vim'

" nerdtree
Plugin 'scrooloose/nerdtree'

autocmd stdinreadpre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTreeToggle | endif

map <c-n> :NERDTreeToggle<cr>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" bufexplorer
Plugin 'jlanzarotta/bufexplorer'

" vim-sensible
Plugin 'tpope/vim-sensible'

" vim-surround
Plugin 'surround.vim'

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
" Vim Tmux Navigator
" Allows navigation between Vim and Tmux panes using Ctrl + hjkl
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'christoomey/vim-tmux-navigator'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Emmet for HTML/CSS shortcuts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'mattn/emmet-vim'

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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use hybrid color scheme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'w0ng/vim-hybrid'

call vundle#end()

filetype plugin indent on
syntax on
set relativenumber
set list

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use jk to exit insert mode
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap jk <ESC>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use hybrid color scheme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme hybrid
highlight LineNr ctermfg=darkgray  ctermbg=8

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set tabs to 2 spaces
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smartindent

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set a rule at 80 characters
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set colorcolumn=80
highlight ColorColumn ctermbg=8
