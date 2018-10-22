#!/usr/bin/env bash

# Install Ellipsis

sudo pacman -Sy --noconfirm git yay

mkdir -p $HOME/bin

eval `ssh-agent`
ssh-add $HOME/.ssh/id_rsa

rm -rf $HOME/.ellipsis.bak*
# XXX Change to github clone
curl https://ellipsis.sh | sh

export PATH=$PATH:$HOME/.ellipsis/bin

# Install some base ellipsis modules
ellipsis install ssh://git@github.com/primeroz/dot-vim
ellipsis install ssh://git@github.com/primeroz/dot-tmux
ellipsis install ssh://git@github.com/primeroz/dot-git
ellipsis install ssh://git@github.com/primeroz/dot-task
ellipsis install ssh://git@github.com/primeroz/dot-zsh
ellipsis install ssh://git@github.com/primeroz/dot-basearch
ellipsis install ssh://git@github.com/primeroz/dot-wm

