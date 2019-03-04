#!/usr/bin/env bash

# Install Ellipsis

sudo pacman -Sy --noconfirm --needed git yay

mkdir -p $HOME/bin

eval `ssh-agent`
ssh-add $HOME/.ssh/id_rsa
ssh-add $HOME/.ssh/przchrome.pem

rm -rf $HOME/.ellipsis.bak*

# XXX Change to github clone
curl -L https://ellipsis.sh | sh

export PATH=$PATH:$HOME/.ellipsis/bin
export ELLIPSIS_USER=primeroz
export ELLIPSIS_PROTO=git

# Install some base ellipsis modules
ellipsis status basearch && (ellipsis pull basearch) 
ellipsis install basearch

#ellipsis install ssh://git@github.com/primeroz/dot-vim
#ellipsis install ssh://git@github.com/primeroz/dot-tmux
#ellipsis install ssh://git@github.com/primeroz/dot-git
#ellipsis install ssh://git@github.com/primeroz/dot-task
#ellipsis install ssh://git@github.com/primeroz/dot-zsh
#ellipsis install ssh://git@github.com/primeroz/dot-wm

