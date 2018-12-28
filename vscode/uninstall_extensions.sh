#!/bin/bash

cat vscode/extensions | while read line
do
    code --uninstall-extension $line
done