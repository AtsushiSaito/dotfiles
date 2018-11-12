#!/bin/bash

if [ `brew --prefix` == "/usr/local" ]; then
	echo "Homebrew installed!"
else
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
