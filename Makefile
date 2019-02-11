brew:
	/bin/bash etc/init/brew.sh

macinit:
	/bin/bash etc/init/mac.sh

prezto:
	/bin/zsh etc/init/prezto.sh

dotinstall:
	/bin/bash dotfile_install.sh

ubuntu_dotinstall:
	/bin/bash dotfile_install.sh
	/bin/bash ubuntu_dotfiles/dotfile_install.sh

mac_nodebrew:
	/bin/bash etc/init/nodebrew.sh

vscode_setting_install:
	/bin/bash vscode/install_setting_json.sh

vscode_extensions_install:
	/bin/bash vscode/install_extensions.sh

vscode_extensions_uninstall:
	/bin/bash vscode/uninstall_extensions.sh

vscode_listup_extensions:
	/bin/bash vscode/listup-extensions.sh

vim_make:
	/bin/bash etc/init/vim_make.sh

zsh_make:
	/bin/bash etc/init/zsh_make.sh
