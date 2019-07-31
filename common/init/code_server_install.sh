#!/bin/bash

if [ "$(uname)" == 'Darwin' ]; then
    echo "Your platform ($(uname -a)) is not supported."
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
    wget -O code_server.tar.gz https://github.com/cdr/code-server/releases/download/1.939-vsc1.33.1/code-server1.939-vsc1.33.1-linux-x64.tar.gz
    mkdir code_server && tar xvzf code_server.tar.gz -C code_server --strip-components 1
    cd code_server
    sudo mv code-server /usr/bin/code-server
    rm -rf code_server*
    mkdir -p ~/.code-server/Backups

    echo {"rootWorkspaces":[],"folderURIWorkspaces":[],"emptyWorkspaceInfos":[],"emptyWorkspaces":[]} >~/.code-server/Backups/workspaces.json
elif [ "$(expr substr $(uname -s) 1 10)" == 'MINGW32_NT' ]; then
    echo "Your platform ($(uname -a)) is not supported."
else
    echo "Your platform ($(uname -a)) is not supported."
    exit 1
fi
