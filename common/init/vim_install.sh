#!/bin/bash

if [ "$(uname)" == 'Darwin' ]; then
    brew install lua
    brew install vim --with-lua
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
    sudo apt-get remove --purge vim vim-runtime vim-common
    sudo apt-get install -y git build-essential ncurses-dev lua5.2 lua5.2-dev luajit python-dev python3-dev ruby-dev
    cd /opt/
    sudo git clone https://github.com/vim/vim
    cd vim/

    sudo ./configure --with-features=huge --enable-multibyte --enable-luainterp=dynamic --enable-gpm --enable-cscope --enable-fontset --enable-fail-if-missing --prefix=/usr/local --enable-pythoninterp=dynamic --enable-python3interp=dynamic --enable-rubyinterp=dynamic
    sudo make
    sudo make install
    vim --version
elif [ "$(expr substr $(uname -s) 1 10)" == 'MINGW32_NT' ]; then
    echo "Your platform ($(uname -a)) is not supported."
else
    echo "Your platform ($(uname -a)) is not supported."
    exit 1
fi
