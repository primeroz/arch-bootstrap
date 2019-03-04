#!/usr/bin/env bash

# Install Ellipsis

sudo pacman -Sy --noconfirm --needed git yay

mkdir -p $HOME/bin

eval `ssh-agent`
ssh-add $HOME/.ssh/id_rsa
ssh-add $HOME/.ssh/przchrome.pem

rm -rf $HOME/.ellipsis.bak*

# XXX Change to github clone
if [ ! -d ~/.ellipsis ]; then
  curl -L https://ellipsis.sh | sh
fi

export PATH=$PATH:$HOME/.ellipsis/bin
export ELLIPSIS_USER=primeroz
export ELLIPSIS_PROTO=ssh

# Install some base ellipsis modules
ellipsis status basearch && (ellipsis pull basearch) 
ellipsis install basearch

ellipsis status git && (ellipsis pull git) 
ellipsis install git
ellipsis status vim && (ellipsis pull vim) 
ellipsis install vim
ellipsis status tmux && (ellipsis pull tmux) 
ellipsis install tmux
ellipsis status zsh && (ellipsis pull zsh) 
ellipsis install zsh
ellipsis status i3 && (ellipsis pull i3) 
ellipsis install i3
ellipsis status i3status && (ellipsis pull i3status) 
ellipsis install i3status

