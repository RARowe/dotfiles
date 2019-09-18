set number
set softtabstop=2
set tabstop=2
set shiftwidth=2

set expandtab
set autoindent
set nocindent
set smartindent
set ignorecase
set smartcase

let mapleader="\\"
nmap <Leader>w :w<CR>
nmap <Leader>b <C-^>
nmap <Leader>o o<Esc>
nmap <Leader>O O<Esc>
tnoremap <Esc> <C-\><C-n>

call plug#begin('~/.vim/plugged')
  Plug 'tpope/vim-sensible'
  Plug 'https://github.com/itchyny/vim-haskell-indent'
call plug#end()
