# vim-config

My Vim/Neovim configuration file

## Installation

**1.** Install [Vim](https://www.vim.org/download.php) & [Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)

**2.** Clone the repo to `~/.vim`,
we'll also symlink it for NeoVim:
```sh
$ mkdir ~/.config
$ git clone https://github.com/sakshamgupta05/vim-config.git ~/.vim
$ ln -s ~/.vim ~/.config/nvim
```

**3.** Install [the_silver_searcher](https://github.com/ggreer/the_silver_searcher)

**4.** Open Vim/Neovim by typing `vim`/`nvim`

Enjoy!

### Vimdiff

``````
git config --global diff.tool vimdiff
git config --global difftool.prompt false
``````

