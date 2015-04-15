
## Install

1. Backup old stuff `cd ~ && mv .vim/ .vim-back/ && mv .vimrc ~/.vim-back/ && mv .gvimrc ~/.vim-back/`
2. `cd ~`
3. `git clone git@github.com:willthemoor/vimmage.git .vim`
4. `ln -s ~/.vim/.vimrc ~/.vimrc`
5. `ln -s ~/.vim/.gvimrc ~/.gvimrc`
6. Install the [Vundle](https://github.com/gmarik/Vundle.vim) plugin manager. `git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
6. Install the plugins. Either  `vim +PluginInstall +qall` from the cli or launch `vim` and run `:PluginInstall`

Fonts patched specifically for Powerline/Airline (with install script) available here: https://github.com/powerline/fonts
