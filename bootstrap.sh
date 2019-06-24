#!/bin/sh

sudo mkdir -p /usr/local/babushka
sudo chown -R `whoami` /usr/local/babushka
sudo mkdir -p /usr/local/bin
sudo chown -R `whoami` /usr/local/bin

xcode-select --install
#OSX Mojave fix
sudo installer -pkg /Library/Developer/CommandLineTools/Packages/macOS_SDK_headers_for_macOS_10.14.pkg -target /

type babushka || sh -c "`curl https://babushka.me/up`"

ln -s $(pwd) ~/.babushka/deps
export PATH="/usr/local/sbin:${PATH}"

