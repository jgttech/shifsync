#!/usr/bin/env zsh
source $HOME/.zshrc

nvm -v

V=$(gvm listall | grep -E '^   go[0-9]+\.[0-9]+(\.[0-9]+)?$' | sort -V | tail -n 1 | awk '{print $1}'); gvm install $V; gvm use $V --default; unset V
