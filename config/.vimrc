" ----------------------------------------------------------------------------
" Vim/Neovim Config
" ----------------------------------------------------------------------------

" vim specific configs
if !has('nvim')
  execute 'source' fnamemodify(expand('<sfile>'), ':h').'/vim.vim'
endif

" neovim specific configs
if has('nvim')
  execute 'source' fnamemodify(expand('<sfile>'), ':h').'/neovim.vim'
endif

" let g:coc_global_extensions = [
"       \'coc-flutter',
"       \'coc-json',
"       \'coc-yaml'
"       \]

" source plugins
execute 'source' fnamemodify(expand('<sfile>'), ':h').'/plugins.vim'

" " source plugins
" execute 'source' fnamemodify(expand('<sfile>'), ':h').'/coc.vim'

" ----------------------------------------------------------------------------
" MARK: - Basic
" ----------------------------------------------------------------------------

" use vim over vi
set nocompatible

" enable scrolling
set mouse=a

" enable syntax highlighting
syntax enable

" Make backspace behave the way it should
set backspace=indent,eol,start

" activate line numbers
set number relativenumber

" show line number on the cursor position
set ruler

" change leader key
let mapleader=' '

" ignore case when searching
set ignorecase

" ignore case if search pattern is all lowercase, case-sensitive otherwise
set smartcase

" use system's clipboard
if system('uname -s') == "Darwin\n"
  set clipboard=unnamed "OSX
else
  set clipboard=unnamedplus "Linux
endif

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
colorscheme gruvbox

" remove scrollbars
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

" encoding
set encoding=UTF-8
set fileencoding=UTF-8

" flash on bell
set  visualbell

" visual indicator for 80 char limit in a row
if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif
" match ErrorMsg '\%>80v.\+'

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

nnoremap <Leader>w <C-w>

" ----------------------------------------------------------------------------
" MARK: - Mappings
" ----------------------------------------------------------------------------

" Remap esc key
inoremap jk <ESC>
inoremap JK <ESC>

" move up and down more naturally in wrap
noremap j gj
noremap k gk

" exit terminal mode
tnoremap <Leader>e <C-\><C-n>
vnoremap <Leader>e <ESC>

" edit vimrc in a new tab
nnoremap <Leader>ev :tabedit ~/.vim/config/vimrc<cr>
" source vimrc
nnoremap <Leader>sv :source $MYVIMRC<cr>

" turn off search highlight
nnoremap <Leader><space> :nohlsearch<cr>

" vertical split
nnoremap <Leader>vsp :vsplit<cr>
" horizontal split
nnoremap <Leader>sp :split<cr>
" quit
nnoremap <Leader>q :q<cr>

" delete without copy
nnoremap <leader>d "_d
xnoremap <leader>d "_d
xnoremap <leader>p "_dP
nnoremap <leader>c "_c
xnoremap <leader>c "_c

nnoremap <Leader>tt :tabnew<cr>
nnoremap <Leader>tj :tabp<cr>
nnoremap <Leader>tk :tabn<cr>
nnoremap <Leader>th :tabfirst<cr>
nnoremap <Leader>tl :tablast<cr>
nnoremap <Leader>tm :tabm<space>
nnoremap <Leader>td :tabclose<cr>

" ----------------------------------------------------------------------------
" MARK: - Plugin Specifics
" ----------------------------------------------------------------------------

""" NERDTree {{
" make NERDTreeToggle
nnoremap <Leader>nt :NERDTreeToggle<cr>
" find in NERDTree
nnoremap <Leader>nf :NERDTreeFind<cr>
" disable nerdtree for file browsing
let NERDTreeHijackNetrw = 0
""" }}


""" fzf {{
" search git files in project
nnoremap <Leader>gf :GFiles<CR>
" search files in project
nnoremap <Leader>ff :Files<CR>
" search pattern in project
nnoremap <Leader>ag :Ag<CR>
""" }}

""" lightline {{
" lightline config
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }
" fix lightline not showing in vim
set laststatus=2
""" }}

""" fugitive {{
" side by side diff
nnoremap <Leader>gd :Gvdiff<cr>
""" }}

""" IndentLine {{
" make indentline faster
let g:indentLine_faster = 1
""" }}

""" Emmet {{
let g:user_emmet_settings = {
      \  'javascript.jsx' : {
      \      'extends' : 'jsx',
      \  },
      \}
""" }}

""" asyncrun {{
" set the quickfix window 6 lines height.
let g:asyncrun_open = 6
" ring the bell to notify you job finished
let g:asyncrun_bell = 1
" F10: toggle quickfix window
nnoremap <F10> :call asyncrun#quickfix_toggle(6)<cr>
" run `Gpush` and `Gfetch` async in vim-fugitive
command! -bang -nargs=* -complete=file Make AsyncRun -program=make @ <args>
""" }}

""" vim-go {{
let g:go_fmt_command = "goimports"
nnoremap <Leader>gi :GoInfo<cr>
""" }}

""" ale{{

" toggle ale
nnoremap <Leader>at :ALEToggle<cr>
" let g:ale_completion_enabled = 1
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
" disable lint on text change
let g:ale_lint_on_text_changed = 'never'
" permanent left coulumn to show errors
" let g:ale_sign_column_always = 1
" if don't want linters to run on opening a file
" let g:ale_lint_on_enter = 0
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
let g:ale_linters_explicit = 1
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1

noremap <Leader>ad :ALEGoToDefinition<CR>
nnoremap <leader>af :ALEFix<cr>
noremap <Leader>ar :ALEFindReferences<CR>

"Move between linting errors
nnoremap ]r :ALENextWrap<CR>
nnoremap [r :ALEPreviousWrap<CR>

let g:ale_elixir_elixir_ls_release='/Users/saksham/elixir-ls/release'
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'elixir': ['credo','elixir-ls']
\ }

let g:ale_fixers = {
\ 'javascript': ['eslint'],
\   'elixir': ['mix_format']
\ }

""" }}


" Required for operations modifying multiple buffers like rename.
set hidden

let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    \ 'python': ['/usr/local/bin/pyls'],
    \ 'ruby': ['~/.rbenv/shims/solargraph', 'stdio'],
    \ }

" note that if you are using Plug mapping you should not use `noremap` mappings.
nmap <F5> <Plug>(lcn-menu)
" Or map each action separately
nmap <silent>K <Plug>(lcn-hover)
nmap <silent> gd <Plug>(lcn-definition)
nmap <silent> <F2> <Plug>(lcn-rename)

" ----------------------------------------------------------------------------
" MARK: - Auto Commands
" ----------------------------------------------------------------------------

" toggle relative numbers while inserting & switching buffers
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu | set nornu | endif
augroup END

" fix vim slowdowns in scrolling in large ruby files
augroup rubyPerformanceFix
  autocmd!
  autocmd FileType ruby set ttyfast
  autocmd FileType ruby set lazyredraw
  autocmd FileType ruby set re=1
augroup END

" C compile key bindings
" F2: grep
" F4: update Makefile with cmake.
" F5: run the single file
" F6: run project test
" F7: build project
" F8: run project
" F9: compile the single file
augroup compileC
  autocmd!
  autocmd FileType c noremap <silent> <F9> :AsyncRun gcc -Wall -O2 "$(VIM_FILEPATH)" -o "$(VIM_FILEDIR)/$(VIM_FILENOEXT)" <cr>
  autocmd FileType c noremap <silent> <F5> :AsyncRun -raw -cwd=$(VIM_FILEDIR) "$(VIM_FILEDIR)/$(VIM_FILENOEXT)" <cr>
  autocmd FileType c noremap <silent> <F7> :AsyncRun -cwd=<root> make <cr>
  autocmd FileType c noremap <silent> <F8> :AsyncRun -cwd=<root> -raw make run <cr>
  autocmd FileType c noremap <silent> <F6> :AsyncRun -cwd=<root> -raw make test <cr>
  autocmd FileType c nnoremap <silent> <F4> :AsyncRun -cwd=<root> cmake . <cr>
  if has('win32') || has('win64')
    autocmd FileType c noremap <silent><F2> :AsyncRun! -cwd=<root> findstr /n /s /C:"<C-R><C-W>" "\%CD\%\*.h" "\%CD\%\*.c*" <cr>
  else
    autocmd FileType c noremap <silent><F2> :AsyncRun! -cwd=<root> grep -n -s -R <C-R><C-W> --include='*.h' --include='*.c*' '<root>' <cr>
  endif
augroup END

" CPP compile key bindings
" F5: run the single file
" F9: compile the single file
augroup compileCpp
  autocmd!
  autocmd FileType cpp noremap <silent> <F9> :AsyncRun g++ -Wall -O2 "$(VIM_FILEPATH)" -o "$(VIM_FILEDIR)/$(VIM_FILENOEXT)" <cr>
  autocmd FileType cpp noremap <silent> <F5> :AsyncRun -raw -cwd=$(VIM_FILEDIR) "$(VIM_FILEDIR)/$(VIM_FILENOEXT)" <cr>
augroup END

" General compile key bindings
augroup compileProj
  autocmd!
  autocmd FileType java nnoremap <F5> :w <bar> !javac % && java -enableassertions %:r <CR>
  autocmd FileType python nnoremap <F5> :w <bar> !python % <CR>
  autocmd FileType perl nnoremap <F5> :w <bar> !perl % <CR>
  autocmd FileType go nnoremap <F5> :w <bar> !go build % && ./%:r <CR>
augroup END
