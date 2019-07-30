########### Mac #############
## install homebrew
mac_homebrew_installl:
	/bin/bash mac/init/homebrew.sh

## install lua vim
mac_lua_vim_install:
	/bin/bash mac/init/lua_vim_install.sh

## install dotfiles
mac_dotfiles_install:
	/bin/bash common/init/dotfiles_install.sh
	/bin/bash mac/init/dotfiles_install.sh

## install nodebrew
mac_nodebrew:
	/bin/bash mac/init/nodebrew.sh

## install vscode's setting.json file to vscode's application directory
mac_vscode_setting_json_install:
	/bin/bash mac/vscode/setting_file_install.sh

## install vscode extension from extensions file
mac_vscode_extensions_install:
	/bin/bash mac_vscode/extensions_install.sh

## listup vscode extensions
mac_vscode_extensions_listup:
	/bin/bash mac_vscode/extensions_listup.sh

## ricty generate
mac_generate_ricty:
	/bin/bash mac/init/generate_ricty.sh

########### Ubuntu #############

ubuntu_dotfiles_install:
	/bin/bash common/init/dotfiles_install.sh
	/bin/bash ubuntu/init/dotfiles_install.sh

## build vim
ubuntu_build_vim:
	/bin/bash ubuntu/init/build_vim.sh

## install code server
ubuntu_code_server_install:
	/bin/bash ubuntu/init/ubuntu_code_server_install.sh

## build tmux
build_tmux:
	/bin/bash ubuntu/init/build_tmux.sh

## build zsh
zsh_make:
	/bin/bash ubuntu/init/build_zsh.sh

########### Common #############
## initialize git config
git_init_config:
	/bin/bash common/init/git_init_config.sh

## install prezto
prezto_install:
	/bin/zsh common/init/prezto_install.sh

## build vim
build_bash:
	/bin/bash common/init/build_bash.sh

## install vimplug
vim_plug_install:
	/bin/bash common/init/vim_plug_install.sh

## date set (google)
no_ntp_date_setting:
	/bin/bash common/init/no_ntp_date_setting.sh