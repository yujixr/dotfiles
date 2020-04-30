#!/bin/bash

DOT_DIR="$HOME/dotfiles"

has() {
    type "$1" > /dev/null 2>&1
}

cd ${DOT_DIR}

if has "git"; then
    git pull
elif has "curl" || has "wget"; then
    TARBALL="https://github.com/yujixr/dotfiles/archive/master.tar.gz"
    if has "curl"; then
        curl -L ${TARBALL} -o master.tar.gz
    else
        wget ${TARBALL}        
    fi
    tar -zxvf master.tar.gz
    rm -f master.tar.gz
    mv -f dotfiles-master "${DOT_DIR}"
else
    echo "curl or wget or git required"
    exit 1
fi

for f in .??*;
do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".gitignore" ]] && continue

    ln -snf $DOT_DIR/"$f" $HOME/"$f"
    echo "Updated $f"
done
