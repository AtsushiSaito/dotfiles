# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
	source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

autoload -Uz colors
colors

# Prompt
PROMPT='%F{yellow}%n%f:%F{blue}%~%f$ '

if [ -x $HOME/.dircolors ]; then
    eval $(dircolors ~/.dircolors/dircolors.ansi-dark)
	zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
else
	git clone git@github.com:seebi/dircolors-solarized.git ~/.dircolors
fi

# General Alias
alias ls='gls --color=auto'
alias la='gls -la --color=auto -h --time-style=long-iso'

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
compinit -C
