execute  pathogen#infect()
syntax on
filetype plugin indent on

set runtimepath^=~/.vim/bundle/ctrlp.vim

autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C -n> :NerdTreeToggle<CR>
