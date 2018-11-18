# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
	source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Prompt
PROMPT='%F{2}%n%f:%F{5}%~%f$ '

# General Alias
alias ls='ls -G'
alias la='ls -la'

if [ -x /usr/bin/dircolors ]; then
    alias ls='ls --color=auto'
fi

# Xcode Alias
alias podclean='pod deintegrate && pod clean'
alias cartup='DEVELOPER_DIR=/Applications/Xcode.app carthage update --platform ios'

# Pyenv
export PYENV_ROOT=$HOME/.pyenv
if [ -d "${PYENV_ROOT}" ]; then
	export PATH=${PYENV_ROOT}/bin:$PATH
	eval "$(pyenv init -)"
fi

# nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH 

# Export
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Zsh Option
setopt hist_ignore_dups
setopt hist_save_no_dups
setopt hist_expand
setopt share_history
setopt inc_append_history

autoload -Uz compinit
compinit
