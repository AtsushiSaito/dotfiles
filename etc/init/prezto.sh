#!/bin/zsh

if [ -x ${ZDOTDIR:-$HOME}/.zprezto ]; then
	echo "prezto installed!!"
else
	git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
	setopt EXTENDED_GLOB
	for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
		ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
	done

        ln -sf $DIR/zshrc ~/.zshrc
        ln -sf $DIR/zpreztorc ~/.zpreztorc
fi

