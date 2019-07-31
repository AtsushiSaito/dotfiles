#!/bin/bash

if [ "$(uname)" == 'Darwin' ]; then
    echo "Your platform ($(uname -a))"
    DIR=$(pwd)/common
    cd $DIR
    for f in .??*; do
        [[ "$f" == ".git" ]] && continue
        [[ "$f" == ".DS_Store" ]] && continue

        ln -sf $DIR/$f ~/$f
        echo "installed ($f) on $HOME"
    done
    cd ../

    DIR=$(pwd)/mac
    cd $DIR
    for f in .??*; do
        [[ "$f" == ".git" ]] && continue
        [[ "$f" == ".DS_Store" ]] && continue

        ln -sf $DIR/$f ~/$f
        echo "installed ($f) on $HOME"
    done
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
    echo "Your platform ($(uname -a))"
    DIR=$(pwd)/common
    cd $DIR
    for f in .??*; do
        [[ "$f" == ".git" ]] && continue
        [[ "$f" == ".DS_Store" ]] && continue

        ln -sf $DIR/$f ~/$f
        echo "installed ($f) on $HOME"
    done
    cd ../

    DIR=$(pwd)/ubuntu
    cd $DIR
    for f in .??*; do
        [[ "$f" == ".git" ]] && continue
        [[ "$f" == ".DS_Store" ]] && continue

        ln -sf $DIR/$f ~/$f
        echo "installed ($f) on $HOME"
    done
elif [ "$(expr substr $(uname -s) 1 10)" == 'MINGW32_NT' ]; then
    echo "Your platform ($(uname -a)) is not supported."
else
    echo "Your platform ($(uname -a)) is not supported."
    exit 1
fi
