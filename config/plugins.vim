" ----------------------------------------------------------------------------
" vim-plug plugins
" ----------------------------------------------------------------------------

call plug#begin()

" ----------------------------------------------------------------------------
" MARK: - Visual
" ----------------------------------------------------------------------------

" onedark theme
Plug 'joshdick/onedark.vim'

" status/tabline
Plug 'itchyny/lightline.vim'

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
Plug 'junegunn/fzf.vim', { 'on': 'Files' }

" ----------------------------------------------------------------------------
" MARK: - Language, Highlighting, Linting
" ----------------------------------------------------------------------------

" language packs (syntax highlighting)
Plug 'sheerun/vim-polyglot'

" async lint engine
Plug 'w0rp/ale'

" editorconfig (project specific configurations)
Plug 'editorconfig/editorconfig-vim'

" todo highlighting
Plug 'sakshamgupta05/vim-todo-highlight'

" ----------------------------------------------------------------------------
" MARK: - Utilities
" ----------------------------------------------------------------------------

" Git wrapper
Plug 'tpope/vim-fugitive'

" comment stuff out
Plug 'tpope/vim-commentary'

" auto matching for brackets
Plug 'jiangmiao/auto-pairs'

" end certain structures
Plug 'tpope/vim-endwise'

" async find and replace
Plug 'brooth/far.vim'

" quoting/parenthesizing
Plug 'tpope/vim-surround'

call plug#end()
