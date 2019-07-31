#!/bin/bash

if [ "$(uname)" == 'Darwin' ]; then
    echo "Your platform ($(uname -a)) is not supported."
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
    sudo apt update
    sudo apt-get install libncursesw5-dev
    cd /usr/local/src
    #sudo wget https://sourceforge.net/projects/zsh/files/zsh/5.5.1/zsh-5.5.1.tar.xz/download -O zsh-5.5.1.tar.xz
    sudo wget https://sourceforge.net/projects/zsh/files/zsh/5.7.1/zsh-5.7.1.tar.xz/download -O zsh-5.7.1.tar.xz
    #sudo tar xvf zsh-5.5.1.tar.xz
    #cd zsh-5.5.1
    sudo tar xvf zsh-5.7.1.tar.xz
    cd zsh-5.7.1
    sudo ./configure --enable-multibyte
    sudo make
    sudo make install

    echo "============================="
    echo "sudo vim /etc/shells"
    echo ""
    echo "/usr/local/bin/zsh"
    echo "============================="
elif [ "$(expr substr $(uname -s) 1 10)" == 'MINGW32_NT' ]; then
    echo "Your platform ($(uname -a)) is not supported."
else
    echo "Your platform ($(uname -a)) is not supported."
    exit 1
fi
