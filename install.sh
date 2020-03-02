#!/bin/zsh

DIR=".hollow"

mkdir -pv ~/${DIR}/{bash,bin,tmux,vim,zsh}

## Profile config
echo -e "Profile config"
if [ -f ~/.profile ] || [ -L ~/.profile ]; then
    rm -v ~/.profile
fi

cp -v files/profile ~/${DIR}/
ln -sv ~/${DIR}/profile ~/.profile

## Bash config
echo -e "\nBash config"
if [ -f ~/.bashrc ] || [ -L ~/.bashrc ]; then
    rm -v ~/.bashrc
fi

cp -rfv files/bash ~/${DIR}/
ln -sv ~/${DIR}/bash/bashrc ~/.bashrc
