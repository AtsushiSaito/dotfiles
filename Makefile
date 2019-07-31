## install homebrew
brew:
	/bin/bash common/init/homebrew.sh

## install lua vim
vim:
	/bin/bash common/init/vim_install.sh

## install dotfiles
dotfiles:
	/bin/bash common/init/dotfiles_install.sh

## install nodebrew
nodebrew:
	/bin/bash common/init/nodebrew.sh

## install vscode's setting.json file to vscode's application directory
vscode_init:
	/bin/bash common/setting_file_install.sh

## install vscode extension from extensions file
vscode_extensions_install:
	/bin/bash common/extensions_install.sh

## listup vscode extensions
vscode_extensions_listup:
	/bin/bash common/extensions_listup.sh

## ricty generate
ricty:
	/bin/bash common/init/ricty.sh

## install code server
code_server_install:
	/bin/bash common/init/code_server_install.sh

## build tmux
tmux:
	/bin/bash common/init/tmux.sh

## build zsh
zsh:
	/bin/bash common/init/zsh.sh

gitconfig:
	/bin/bash common/init/git_init_config.sh

## install prezto
prezto:
	/bin/zsh common/init/prezto_install.sh

## build vim
bash:
	/bin/bash common/init/bash.sh

## install vimplug
vimplug:
	/bin/bash common/init/vim_plug_install.sh

## date set (google)
no_ntp_date:
	/bin/bash common/init/no_ntp_date_setting.sh