#!/usr/bin/bash

BARE_REPO=$HOME/.dotfiles/

git init --bare $BARE_REPO
alias dotfiles='/usr/bin/git --git-dir=$BARE_REPO --work-tree=$HOME'
dotfiles config --local status.showUntrackedFiles no
echo "alias dotfiles='/usr/bin/git --git-dir=$BARE_REPO --work-tree=$HOME'" >> $HOME/.bashrc
