#!/bin/bash

if [ "$(uname)" == 'Darwin' ]; then
    cat mac_extensions | while read line; do
        code --install-extension $line
    done
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
    echo "Your platform ($(uname -a)) is not supported."
elif [ "$(expr substr $(uname -s) 1 10)" == 'MINGW32_NT' ]; then
    echo "Your platform ($(uname -a)) is not supported."
else
    echo "Your platform ($(uname -a)) is not supported."
    exit 1
fi
