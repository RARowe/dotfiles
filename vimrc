set number
set softtabstop=4
set tabstop=4
set shiftwidth=4

set expandtab
set autoindent
set nocindent
set smartindent
set ignorecase
set smartcase

let mapleader="\\"
nmap <Leader>w :w<CR>
nmap <Leader>b <C-^>
nmap <Leader>n :bnext<CR>
nmap <Leader>p :bprevious<CR>
nmap <Leader>o o<Esc>
nmap <Leader>O O<Esc>
nmap <Leader>p "*p
tnoremap <Esc> <C-\><C-n>

" Reload Vim config automatically
autocmd! BufWritePost *vimrc :source $MYVIMRC

" Reload openbox when conf edited
autocmd! BufWritePost */openbox/*rc.xml !openbox --restart

call plug#begin('~/.vim/plugged')
  Plug 'tpope/vim-sensible'
  Plug 'https://github.com/itchyny/vim-haskell-indent'
call plug#end()
