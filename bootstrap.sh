#!/usr/bin/env bash

# Install Ellipsis
# XXX Change to github clone

sudo pacman -Sy --noconfirm git

eval `ssh-agent`
ssh-add $HOME/.ssh/id_rsa

rm -rf $HOME/.ellipsis.bak*
curl https://ellipsis.sh | sh

export PATH=$PATH:$HOME/.ellipsis/bin

# Install some base ellipsis modules
ellipsis install ssh://git@github.com/primeroz/dot-vim.git
ellipsis install ssh://git@github.com/primeroz/dot-tmux.git
ellipsis install ssh://git@github.com/primeroz/dot-git.git
ellipsis install ssh://git@github.com/primeroz/dot-task.git
ellipsis install ssh://git@github.com/primeroz/dot-zsh.git

