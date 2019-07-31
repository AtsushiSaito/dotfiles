#!/bin/bash

if [ "$(uname)" == 'Darwin' ]; then
    brew install fontforge
    cd /tmp
    wget https://github.com/google/fonts/raw/master/ofl/inconsolata/Inconsolata-Bold.ttf
    wget https://github.com/google/fonts/raw/master/ofl/inconsolata/Inconsolata-Regular.ttf
    wget https://osdn.jp/projects/mix-mplus-ipa/downloads/63545/migu-1m-20150712.zip
    unzip migu-1m-20150712.zip
    cp migu-1m-20150712/migu-1m-*.ttf ./
    wget http://www.rs.tus.ac.jp/yyusa/ricty/ricty_generator.sh
    wget http://www.rs.tus.ac.jp/yyusa/ricty/os2version_reviser.sh
    chmod 755 ricty_generator.sh os2version_reviser.sh
    ./ricty_generator.sh auto
    ./os2version_reviser.sh Ricty*.ttf
    cp -f Ricty*.ttf ~/Library/Fonts/
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
    echo "Your platform ($(uname -a)) is not supported."
elif [ "$(expr substr $(uname -s) 1 10)" == 'MINGW32_NT' ]; then
    echo "Your platform ($(uname -a)) is not supported."
else
    echo "Your platform ($(uname -a)) is not supported."
    exit 1
fi
