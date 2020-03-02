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


