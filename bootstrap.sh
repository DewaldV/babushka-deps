#!/bin/sh

sudo mkdir -p /usr/local/babushka
sudo chown -R `whoami` /usr/local/babushka
sudo mkdir -p /usr/local/bin
sudo chown -R `whoami` /usr/local/bin

xcode-select --install
type babushka || sh -c "`curl https://babushka.me/up`"

ln -s $(pwd) ~/.babushka/deps
export PATH="/usr/local/sbin:${PATH}"

