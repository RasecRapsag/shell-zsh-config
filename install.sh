#!/bin/zsh

DIR=".hollow"

mkdir -pv ~/${DIR}/{bash,bin,share,tmux,vim,zsh}

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

## Vim config
echo -e "\nVim config"
if [ -f ~/.vimrc ] || [ -L ~/.vimrc ]; then
    rm -v ~/.vimrc
fi

cp -rfv files/vim ~/${DIR}/
ln -sv ~/${DIR}/vim/vimrc ~/.vimrc

## Tmux config
echo -e "\nTmux config"
if [ -f ~/.tmux.conf ] || [ -L ~/.tmux.conf ]; then
    rm -v ~/.tmux.conf
fi

cp -rfv files/tmux ~/${DIR}/
ln -sv ~/${DIR}/tmux/tmux.conf ~/.tmux.conf

## Zsh config
echo -e "\nZsh config"
OMG_ZSH=".oh-my-zsh/custom"

if [ ! -d ~/.oh-my-zsh ]; then
    echo -e "\nInstall OH MY ZSH"
    curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
fi

## Zsh plugins
if [ ! -d ~/${OMG_ZSH}/plugins/zsh-syntax-highlighting ]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/$OMG_ZSH/plugins/zsh-syntax-highlighting
fi

if [ ! -d ~/${OMG_ZSH}/plugins/zsh-autosuggestions ]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions ~/$OMG_ZSH/plugins/zsh-autosuggestions
fi

## Zsh themes
if [ ! -d ~/${OMG_ZSH}/themes/powerlevel10k ]; then
    echo -e "\nTheme Powerlevel10k"
    git clone https://github.com/romkatv/powerlevel10k.git ~/${OMG_ZSH}/themes/powerlevel10k
fi

if [ -f ~/.zshrc ] || [ -L ~/.zshrc ]; then
    rm -v ~/.zshrc
fi

cp -rfv files/zsh ~/${DIR}/
ln -sv ~/${DIR}/zsh/zshrc ~/.zshrc
ln -s ~/${DIR}/zsh/aws_zsh_completer.sh ~/${DIR}/bin

## ASDF
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.7
. ~/.asdf/asdf.sh

## ASDF Plugin
asdf plugin-add python
asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring
asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git
asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
asdf plugin-add kotlin https://github.com/missingcharacter/asdf-kotlin.git
asdf plugin-add rust https://github.com/code-lever/asdf-rust.git
asdf plugin-add crystal https://github.com/marciogm/asdf-crystal.git

## load ZSH
zsh
