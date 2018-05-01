# dotfiles

## Getting Started

```
$ git clone https://github.com/mochi8k/dotfiles.git

# Emacs
$ npm install -g eslint
npm install -g eslint babel-eslint eslint-plugin-react

$ npm instlal -g tern
$ ln -s ~/dotfiles/emacs/config/tern-config.json ~/.tern-config

$ npm install -g js-beautify
$ git clone https://github.com/yasuyk/web-beautify.git /Users/tannaka/dotfiles/emacs/recipes/web-beautify

$ brew install the_silver_searcher

$ brew install emacs --with-cocoa --with-gnutls
$ ln -s dotfiles/emacs ~/.emacs.d

# Zsh
$ ln -s dotfiles/zsh/.zshenv ~/.zshenv
$ ln -s dotfiles/zsh/.zshrc ~/.zshrc
$ git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ~/dotfiles/zsh/zsh-syntax-highlighting
$ git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/dotfiles/zsh/.zprezto"

# Vim
$ ln -s dotfiles/vim/.vimrc ~/.vimrc

# Git
$ ln -s dotfiles/git/.gitconfig ~/.gitconfig

```
