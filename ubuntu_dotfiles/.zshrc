# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
	source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Prompt
# PROMPT='%F{yellow}%m@%n%f:%F{blue}%~%f$ '
PROMPT='%F{yellow}%n@%m%f:%F{blue}%~%f$ '

if [ -x $HOME/.dircolors ]; then
    eval $(dircolors ~/.dircolors/dircolors.ansi-dark)
	zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
else
	git clone git@github.com:seebi/dircolors-solarized.git ~/.dircolors
fi



# General Alias
alias ls='ls --color=auto'
alias la='ls -la --color=auto -h --time-style=long-iso'

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

if [ -x /opt/ros/kinetic ];then
    source /opt/ros/kinetic/setup.zsh
fi

if [ -x $HOME/catkin_ws ];then
    source ~/catkin_ws/devel/setup.zsh
    alias cm='(){(cd ~/catkin_ws && \catkin_make $@) && source ~/catkin_ws/devel/setup.zsh}'
fi

export ROS_MASTER_URI=http://localhost:11311
export ROS_HOSTNAME=localhost

