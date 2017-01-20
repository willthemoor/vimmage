# Vimmage
My vim setup. You probably don't want to use this. It's a mess and there are real distros out there chock full of thoughtfulness.

## Install

1. Backup old stuff `cd ~ && mv .vim/ .vim-back/ && mv .vimrc ~/.vim-back/ && mv .gvimrc ~/.vim-back/`
2. `cd ~` (just to be sure)
3. `git clone git@github.com:willthemoor/vimmage.git .vim`
4. Link the repo's .vimrc and .gvimrc to the location vim expects them
  1. `ln -s ~/.vim/.vimrc ~/.vimrc`
  2. `ln -s ~/.vim/.gvimrc ~/.gvimrc`
4. Install the [Vundle](https://github.com/gmarik/Vundle.vim) plugin manager. `git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
5. Install the plugins. Three options:
  1. From the command line:  `vim +PluginInstall +qall`
  2. Launch `vim` and run `:PluginInstall`
  3. Launch `vim` and edit the `.vimrc` file: `:e $MYVIMRC`. With this option you can turn plugins on or off before installing by removing or commenting out the lines. When you're finished, save the .vimrc file. The first time you'll also need to run `:so $MYVIMRC`. After the first time, the `.vimrc` file is set to source itself whenever it's saved. **NB** vim may show you errors when you first run it with this `.vimrc` because there are settings in there related to as-yet-uninstalled plugins.

Fonts patched specifically for Powerline/Airline (with install script) available here: https://github.com/powerline/fonts.
