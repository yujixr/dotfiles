#!/bin/bash

DOT_DIR="$HOME/dotfiles"

has() {
    type "$1" > /dev/null 2>&1
}

cd ${DOT_DIR}

if has "git"; then
    git pull
else
    echo "git required"
    exit 1
fi

git submodule update --recursive -i
for f in .??*;
do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".gitignore" ]] && continue

    ln -snf $DOT_DIR/"$f" $HOME/"$f"
    echo "Updated $f"
done
