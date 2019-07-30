#!/bin/bash

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