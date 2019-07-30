#!/bin/bash

if [ `brew --prefix` == "/usr/local" ]; then
    brew install nodebrew
    nodebrew setup
else
    echo "brew not installed."
fi
