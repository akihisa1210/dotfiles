#!/usr/bin/env bash

set -u

# move to dotfiles dir
BASEDIR=$(dirname $0)
cd ${BASEDIR}

# create symlinks to dotfiles
for f in .??*; do
    [ "$f" = ".git" ] && continue

    ln -snfv ${PWD}/"$f" ~/
done

# copy .config directory
rsync -rv .config ~/

# create dirertory for git repo
mkdir -p ~/repos

exec $SHELL -l
