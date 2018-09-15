" neovim specific configs
if has('nvim')
  execute 'source' fnamemodify(expand('<sfile>'), ':h').'/config/neovim.vim'
endif

execute 'source' fnamemodify(expand('<sfile>'), ':h').'/config/vimrc'
