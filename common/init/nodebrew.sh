#!/bin/bash

if [ "$(uname)" == 'Darwin' ]; then
    if [ $(brew --prefix) == "/usr/local" ]; then
        brew install nodebrew
        nodebrew setup
    else
        echo "brew not installed."
    fi
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
    echo "Your platform ($(uname -a)) is not supported."
elif [ "$(expr substr $(uname -s) 1 10)" == 'MINGW32_NT' ]; then
    echo "Your platform ($(uname -a)) is not supported."
else
    echo "Your platform ($(uname -a)) is not supported."
    exit 1
fi
