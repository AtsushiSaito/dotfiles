#!/bin/bash

if [ "$(uname)" == 'Darwin' ]; then
    if [ $(brew --prefix) == "/usr/local" ]; then
        echo "Homebrew installed!"
    else
        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    fi
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
    echo "Your platform ($(uname -a)) is not supported."
elif [ "$(expr substr $(uname -s) 1 10)" == 'MINGW32_NT' ]; then
    echo "Your platform ($(uname -a)) is not supported."
else
    echo "Your platform ($(uname -a)) is not supported."
    exit 1
fi
