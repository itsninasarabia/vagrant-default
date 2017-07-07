#!/usr/bin/env bash

# ---------------------------------------
#       Oh My ZSH Install
# ---------------------------------------

# Install git and zsh prerequisites 
apt-get -y install git
apt-get -y install zsh

if ! [ -e ~/.oh-my-zsh ]; then
    # Clone Oh My Zsh from the git repo
    echo "Installing Oh My Zsh..."
    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
    cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
    chsh -s /bin/zsh vagrant
fi



