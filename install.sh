#!bin/sh

touch .zshenv
echo "ZDOTDIR=$HOME/.config/zsh-config" >> .zshenv
mv .zshenv $HOME

# Installing zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source $HOME/.config/zsh-config/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

sudo npm install -g spaceship-prompt

echo "To complete instalation, logout and login again."
