#!/bin/bash

DIR=`pwd`/ubuntu
cd $DIR
for f in .??*
do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue

    ln -sf $DIR/$f ~/$f
    echo "installed ($f) on $HOME"
done
