" ----------------------------------------------------------------------------
" Neovim Specific Configs
" ----------------------------------------------------------------------------

" install vim-plug
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" enable true colors
if has('termguicolors')
  set termguicolors
endif

" neovim bug workaround (paste setup sometimes fails to set nopaste)
au InsertLeave * set nopaste
