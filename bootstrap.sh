#!/usr/bin/env bash

# Install Ellipsis
# XXX Change to github clone
curl https://ellipsis.sh | sh

# Install some base ellipsis modules
ellipsis install ssh://github.com/primeroz/dot-vim.git
ellipsis install ssh://github.com/primeroz/dot-tmux.git
ellipsis install ssh://github.com/primeroz/dot-git.git
ellipsis install ssh://github.com/primeroz/dot-task.git
ellipsis install ssh://github.com/primeroz/dot-zsh.git
