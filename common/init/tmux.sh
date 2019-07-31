#!/bin/bash

if [ "$(uname)" == 'Darwin' ]; then
    echo "Your platform ($(uname -a)) is not supported."
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
    sudo apt update
    sudo apt-get install -y libevent-dev libncurses-dev make
    cd /usr/local/src
    sudo wget https://github.com/tmux/tmux/releases/download/2.8/tmux-2.8.tar.gz
    sudo tar xvzf tmux-2.8.tar.gz
    cd tmux-2.8
    sudo ./configure
    sudo make
    sudo make install
elif [ "$(expr substr $(uname -s) 1 10)" == 'MINGW32_NT' ]; then
    echo "Your platform ($(uname -a)) is not supported."
else
    echo "Your platform ($(uname -a)) is not supported."
    exit 1
fi
