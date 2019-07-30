#!/bin/bash

sudo apt update
sudo apt-get install -y libevent-dev libncurses-dev make
cd /usr/local/src
sudo wget https://github.com/tmux/tmux/releases/download/2.8/tmux-2.8.tar.gz
sudo tar xvzf tmux-2.8.tar.gz
cd tmux-2.8
sudo ./configure
sudo make
sudo make install
