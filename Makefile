mac_brew:
	/bin/bash etc/init/mac_brew.sh

mac_init:
	/bin/bash etc/init/mac_init.sh

prezto:
	/bin/zsh etc/init/prezto.sh

mac_dotinstall:
	/bin/bash dotfile_install.sh

ubuntu_dotinstall:
	/bin/bash mac_dotfile_install.sh
	/bin/bash ubuntu_dotfiles/ubuntu_dotfile_install.sh

mac_nodebrew:
	/bin/bash etc/init/mac_nodebrew.sh

mac_vscode_setting_install:
	/bin/bash mac_vscode/install_setting_json.sh

mac_vscode_extensions_install:
	/bin/bash mac_vscode/install_extensions.sh

mac_vscode_extensions_uninstall:
	/bin/bash mac_vscode/uninstall_extensions.sh

mac_vscode_listup_extensions:
	/bin/bash mac_vscode/listup-extensions.sh

vim_make:
	/bin/bash etc/init/vim_make.sh

zsh_make:
	/bin/bash etc/init/zsh_make.sh

bash_make:
	/bin/bash etc/init/bash_make.sh

tmux_make:
	/bin/bash etc/init/tmux_make.sh

ubuntu_code_server_setup:
	/bin/bash etc/init/ubuntu_code_server_install.sh

mac_ricty_make:
	/bin/bash etc/init/ricty_make_mac.sh
