#!/bin/bash

if [ "$(uname)" == 'Darwin' ]; then
    echo "拡張機能をリストアップします。"
    code --list-extensions >mac/vscode/extensions
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
    echo "拡張機能をリストアップします。"
    code --list-extensions >ubuntu/vscode/extensions
elif [ "$(expr substr $(uname -s) 1 10)" == 'MINGW32_NT' ]; then
    echo "Your platform ($(uname -a)) is not supported."
else
    echo "Your platform ($(uname -a)) is not supported."
    exit 1
fi
