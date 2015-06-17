set nocompatible
set nu
syntax on
set showmatch
set matchtime=3
filetype indent on
set tabstop=2
set shiftwidth=2
set expandtab
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

" Key bindings "
" Normal Mode"
nmap <S-Enter> O<Esc>j
nmap <CR> o<Esc>k
nmap <Tab> :tabn<Enter>
nmap <S-Tab> :tabp<Enter>
" Open tab and file browser if name is not known
nmap T :tabedit<Enter>:Explore<Enter>
"For rust recognition"
filetype on
au Filetype html,xml,xsl,html.erb source ~/.vim/scripts/closetag.vim
" Get source for rust vim indent
