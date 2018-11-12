#!/bin/bash

DIR=`pwd`

for f in .??*
do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue

    ln -sf $DIR/$f ~/$f
    echo "$f"
done
