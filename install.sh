#!/bin/bash

DOT_DIR="$HOME/dotfiles"

has() {
    type "$1" > /dev/null 2>&1
}

if [ ! -d ${DOT_DIR} ]; then
    if has "git"; then
        git clone https://github.com/yujixr/dotfiles.git ${DOT_DIR}
    else
        echo "git required"
        exit 1
    fi

    cd ${DOT_DIR}
    git submodule update --recursive -i
    for f in .??*;
    do
        [[ "$f" == ".git" ]] && continue
        [[ "$f" == ".gitignore" ]] && continue

        ln -snf $DOT_DIR/"$f" $HOME/"$f"
        echo "Installed $f"
    done
    mkdir ${DOT_DIR}/.vim/dein 
else
    echo "dotfiles already exists"
    exit 1
fi
