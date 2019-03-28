#!/bin/bash

wget -O code_server.tar.gz https://github.com/codercom/code-server/releases/download/1.408-vsc1.32.0/code-server1.408-vsc1.32.0-linux-x64.tar.gz
mkdir code_server && tar xvzf code_server.tar.gz -C code_server --strip-components 1
cd code_server
sudo mv code-server /usr/bin/code-server
rm -rf code_server*
mkdir -p ~/.code-server/Backups

echo {"rootWorkspaces":[],"folderURIWorkspaces":[],"emptyWorkspaceInfos":[],"emptyWorkspaces":[]} > ~/.code-server/Backups/workspaces.json
