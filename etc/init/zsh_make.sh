#!/bin/bash

sudo apt update
sudo apt-get install libncursesw5-dev
cd /usr/local/src
sudo wget https://sourceforge.net/projects/zsh/files/zsh/5.5.1/zsh-5.5.1.tar.xz/download -O zsh-5.5.1.tar.xz
sudo tar xvf zsh-5.5.1.tar.xz
cd zsh-5.5.1
sudo ./configure --enable-multibyte
sudo make
sudo make install

echo "============================="
echo "sudo vim /etc/shells"
echo ""
echo "/usr/local/bin/zsh"
echo "============================="
