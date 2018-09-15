" ----------------------------------------------------------------------------
" Vim/Neovim Config
" ----------------------------------------------------------------------------

" source plugins
:runtime plugins.vim

" ----------------------------------------------------------------------------
" MARK: - Basic
" ----------------------------------------------------------------------------

" enable scrolling
set mouse=a

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

" ----------------------------------------------------------------------------
" MARK: - Utilities
" ----------------------------------------------------------------------------

" On pressing tab, insert 2 spaces
set expandtab

" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2

" when indenting with '>', use 2 spaces width
set shiftwidth=2

" ----------------------------------------------------------------------------
" MARK: - Visuals
" ----------------------------------------------------------------------------

" colorschemes and statusline
set background=dark
colorscheme onedark
let g:airline_themes='onedark'

" enable true colors
if has('nvim') || has('termguicolors')
  set termguicolors
endif

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
if !has('nvim') && $TERM_PROGRAM =~ "iTerm"
  let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
  let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

" ----------------------------------------------------------------------------
" MARK: - Search
" ----------------------------------------------------------------------------

" highlight search results
set hlsearch
" incremental search
set incsearch

" ----------------------------------------------------------------------------
" MARK: - Split Management
" ----------------------------------------------------------------------------

set splitbelow
set splitright

nmap <Leader>j <C-W><C-J>
nmap <Leader>k <C-W><C-K>
nmap <Leader>h <C-W><C-H>
nmap <Leader>l <C-W><C-L>

" ----------------------------------------------------------------------------
" MARK: - Mappings
" ----------------------------------------------------------------------------

" make it easy to edit vimrc
nmap <Leader>ev :tabedit $MYVIMRC<cr>

" turn off search highlight
nmap <Leader><space> :nohlsearch<cr>

" ----------------------------------------------------------------------------
" MARK: - Plugin Specifics
" ----------------------------------------------------------------------------

" /
" / NERDTree
" /

" make NERDTreeToggle
nmap <Leader>nt :NERDTreeToggle<cr>
" find in NERDTree
nmap <Leader>nf :NERDTreeFind<cr>

" /
" / fzf
" /

" search everywhere in directory
map ff :Files<CR>
" respect .gitignore
nmap ; :call fzf#run(fzf#wrap({'source': 'git ls-files --exclude-standard --others --cached'}))<cr>

" ----------------------------------------------------------------------------
" MARK: - Auto-Commands
" ----------------------------------------------------------------------------

" automatically source the vimrc file on save
augroup autosourcing
  autocmd!
  autocmd BufWritePost vimrc source %
augroup END