let mapleader = "\<Space>"
set nocompatible
set nu
syntax on
set showmatch
set matchtime=3
"filetype indent on
set expandtab
set tabstop=2
set shiftwidth=2
set ruler
set rulerformat=%55(%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%)
" To constantly show filename at bottom
set modeline
set ls=2

" Set incremental search
set incsearch

" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements

set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup

" Open tab and file browser if name is not known
nmap T :tabedit<Enter>:Explore<Enter>

" Custom Keymappings with Leader
nmap <Leader>h :tabp<Enter>
nmap <Leader>l :tabn<Enter>

"For rust recognition"
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'tpope/vim-rails'
Plugin 'elixir-lang/vim-elixir'
Plugin 'rhysd/vim-crystal'
call vundle#end()
filetype plugin indent on
