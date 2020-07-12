#!/bin/bash

touch .zshenv
echo "ZDOTDIR=$HOME/.config/zsh-config" >> .zshenv
mv .zshenv $HOME

# Installing zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git

git clone https://github.com/denysdovhan/spaceship-prompt.git
sudo ln -sf "$PWD/spaceship-prompt/spaceship.zsh" "/usr/local/share/zsh/site-functions/prompt_spaceship_setup"

sudo ln -sf "$PWD/spaceship-prompt/spaceship.zsh" "$PWD/prompt_spaceship_setup"

chsh -s $(which zsh)

echo "To complete instalation, logout and login again."
