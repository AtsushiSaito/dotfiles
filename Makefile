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

viminit:
	/bin/bash etc/init/vim.sh

mac_nodebrew:
	/bin/bash etc/init/nodebrew.sh
