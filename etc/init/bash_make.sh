#!/bin/bash

cd /usr/local/src
#sudo wget https://sourceforge.net/projects/zsh/files/zsh/5.5.1/zsh-5.5.1.tar.xz/download -O zsh-5.5.1.tar.xz
sudo wget http://ftp.gnu.org/gnu/bash/bash-5.0.tar.gz -O bash-5.0.tar.gz
#sudo tar xvf zsh-5.5.1.tar.xz
#cd zsh-5.5.1
sudo tar xvf bash-5.0.tar.gz
cd bash-5.0
sudo ./configure
sudo make
sudo make install

echo "============================="
echo "sudo vim /etc/shells"
echo ""
echo "/usr/local/bin/bash"
echo "============================="
