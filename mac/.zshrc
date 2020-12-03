# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
	source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

autoload -Uz colors
colors

# Prompt
PROMPT='%F{yellow}%n@%m%f:%F{cyan}%~%f$ '

if [ -x /usr/local/opt/coreutils ]; then
    export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
    export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
else
    echo "Please install coreutils"
    echo "brew install coreutils"
fi

# Color
eval $(dircolors ~/.dircolors.ansi-dark)
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

if [ -x $HOME/.zsh/completion ]; then
  fpath=(~/.zsh/completion $fpath)
fi

# General Alias
alias ls='gls --color=auto'
alias la='gls -la --color=auto -h --time-style=long-iso'

# Xcode Alias
alias podclean='pod deintegrate && pod clean'
alias cartup='DEVELOPER_DIR=/Applications/Xcode.app carthage update --platform ios'

alias docker_jupyter='docker run -it --rm -v `pwd`:/home/jovyan/work -p 8888:8888 --name jupyter jupyter/datascience-notebook'

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


export PATH=$PATH:/Users/atsushi/Library/Android/sdk/platform-tools
