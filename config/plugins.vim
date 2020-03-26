" ----------------------------------------------------------------------------
" vim-plug plugins
" ----------------------------------------------------------------------------

call plug#begin()

" ----------------------------------------------------------------------------
" MARK: - Visual
" ----------------------------------------------------------------------------

" vim theme
Plug 'morhetz/gruvbox'

" status/tabline
Plug 'itchyny/lightline.vim'

" vertical lines for indent
Plug 'Yggdroot/indentLine'

" css highlight color
Plug 'ap/vim-css-color'

" ----------------------------------------------------------------------------
" MARK: - File Browsing
" ----------------------------------------------------------------------------

" file system explorer
Plug 'tpope/vim-vinegar'

" file system explorer
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
" NERDTree git status flags
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }

" fuzzy find for vim
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" ----------------------------------------------------------------------------
" MARK: - Language, Highlighting, Linting
" ----------------------------------------------------------------------------

" language packs (syntax highlighting)
Plug 'sheerun/vim-polyglot'

" async lint engine
Plug 'dense-analysis/ale'

" editorconfig (project specific configurations)
Plug 'editorconfig/editorconfig-vim'

" Git line diff gutter
Plug 'airblade/vim-gitgutter'

" todo highlighting
Plug 'sakshamgupta05/vim-todo-highlight'

" lsp
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" ----------------------------------------------------------------------------
" MARK: - Utilities
" ----------------------------------------------------------------------------

" Git wrapper
Plug 'tpope/vim-fugitive'

" comment stuff out
Plug 'tpope/vim-commentary'

" auto matching for brackets
Plug 'jiangmiao/auto-pairs'

" emmet for vim
Plug 'mattn/emmet-vim'

" end certain structures
Plug 'tpope/vim-endwise'

" async find and replace
Plug 'brooth/far.vim'

" quoting/parenthesizing
Plug 'tpope/vim-surround'

" run async shell commands
Plug 'skywind3000/asyncrun.vim'

call plug#end()
