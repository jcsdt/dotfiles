#!/usr/bin/bash

REPO_URL=git@github.com:jcsdt/dotfiles.git
DOTFILES_REPO=$HOME/.dotfiles/

git clone --bare $REPO_URL $DOTFILES_REPO
function dotfiles {
   git --git-dir=$DOTFILES_REPO --work-tree=$HOME $@
}
mkdir -p .dotfiles-backup
dotfiles checkout
if [ $? = 0 ]; then
  echo "Checked out config.";
  else
    echo "Backing up pre-existing dot files.";
    dotfiles checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .dotfiles-backup/
fi;
dotfiles checkout
dotfiles config status.showUntrackedFiles no
