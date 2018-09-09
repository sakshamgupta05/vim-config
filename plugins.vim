set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" file system explorer
Plugin 'scrooloose/nerdtree'

" auto matching for brackets
Plugin 'jiangmiao/auto-pairs'

" status/tabline
Plugin 'vim-airline/vim-airline'

" onedark theme
Plugin 'joshdick/onedark.vim'

" Git wrapper
Plugin 'tpope/vim-fugitive'

" Git line diff gutter
Plugin 'airblade/vim-gitgutter'

" syntax checking
Plugin 'vim-syntastic/syntastic'

" comment stuff out
Plugin 'tpope/vim-commentary'

" end certain structures
Plugin 'tpope/vim-endwise'

" language packs (syntax highlighting)
Plugin 'sheerun/vim-polyglot'

" golang support
Plugin 'fatih/vim-go'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
