" Note: Skip initialization for vim-tiny or vim-small.
if 1
  " vim specific configs
  if !has('nvim')
    execute 'source' fnamemodify(expand('<sfile>'), ':h').'/config/vim.vim'
  endif

  execute 'source' fnamemodify(expand('<sfile>'), ':h').'/config/vimrc'
endif
