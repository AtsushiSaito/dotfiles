#!/bin/bash

INSTALLDIR=$HOME/.vim/pack/completor/start/
COLORDIR=$HOME/.vim/colors

mkdir -p $INSTALLDIR
cd $INSTALLDIR
git clone https://github.com/maralla/completor.vim.git
git clone https://github.com/scrooloose/nerdtree.git

mkdir -p $COLORDIR
cd /tmp
git clone https://github.com/tomasr/molokai
mv molokai/colors/molokai.vim $HOME/.vim/colors
