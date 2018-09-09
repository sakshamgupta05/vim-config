:so ~/.vim/plugins.vim

" enable syntax highlighting
syntax enable

" Make backspace behave the way it should
set backspace=indent,eol,start

" activate line numbers
set number

" show line number on the cursor position
set ruler

" Remap Esc key
inoremap jj <ESC>

" change leader key
let mapleader=' '

"---------------------Utilities-------------------------"

" On pressing tab, insert 2 spaces
set expandtab

" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2

"---------------------Visuals-------------------------"

" colorschemes and statusline
colorscheme onedark
let g:airline_themes='onedark'

" use 256, useful for working with terminal
set t_Co=256

" remove scrollbars
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

" encoding
set encoding=UTF-8

" highlight current line
set cursorline

" cursor change in iTerm
if $TERM_PROGRAM =~ "iTerm"
  let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
  let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

"---------------------Search-------------------------"

" highlight search results
set hlsearch
" incremental search
set incsearch

"---------------------Split management-------------------------"

set splitbelow
set splitright

nmap <Leader>j <C-W><C-J>
nmap <Leader>k <C-W><C-K>
nmap <Leader>h <C-W><C-H>
nmap <Leader>l <C-W><C-L>

"---------------------Mappings-------------------------"

" make it easy to edit vimrc
nmap <Leader>ev :tabedit $MYVIMRC<cr>

" turn off search highlight
nmap <Leader><space> :nohlsearch<cr>

" make NERDTreetoggle
nmap <Leader>nt :NERDTreeToggle<cr>
nmap <Leader>nf :NERDTreeFind<cr>

"---------------------Auto-Commands-------------------------"

" automatically source the vimrc file on save
augroup autosourcing
  autocmd!
  autocmd BufWritePost vimrc source %
augroup END
