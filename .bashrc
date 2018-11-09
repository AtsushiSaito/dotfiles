#!/bin/sh

# Prompt
PS1='\[\033[33m\]\u\[\033[0m\]:\[\033[35m\]\w$\[\033[0m\] '

# Bash completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
	. `brew --prefix`/etc/bash_completion
fi

# General Alias
alias ls='ls -G'
alias la='ls -la'

# Pyenv
export PYENV_ROOT=$HOME/.pyenv
if [ -d "${PYENV_ROOT}" ]; then
	export PATH=${PYENV_ROOT}/bin:$PATH
	eval "$(pyenv init -)"
fi

export HOMEBREW_CASK_OPTS="--appdir=/Applications"
