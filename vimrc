set nocompatible

:so ~/.vim/plugins.vim

" enable syntax highlighting
syntax enable

" Make backspace behave the way it should
set backspace=indent,eol,start

" activate line numbers
set number

" show line number on the cursor position
set ruler

" Disable Arrow keys in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Remap Esc key
inoremap jj <ESC>
"---------------------Utilities-------------------------"
" On pressing tab, insert 2 spaces
set expandtab

" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2

"---------------------Mappings-------------------------"
" Make NERDTreetoggle
map <C-n> :NERDTreeToggle<CR>
