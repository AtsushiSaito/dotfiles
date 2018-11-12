#!/bin/bash

if [ `brew --prefix` == "/usr/local" ]; then
    brew install nodebrew
    echo "==============================================="
    echo "vim ~/.bash_profile"
    echo "export PATH=\$HOME/.nodebrew/current/bin:\$PATH"
    echo "==============================================="
else
    echo "brew not installed."
fi
