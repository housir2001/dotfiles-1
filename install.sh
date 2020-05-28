#!/bin/bash 


#pacman -Syu nodejs mpv qutebrowser kitty fzf ripgrep tmux neofetch fd awesome-terminal-fonts ttf-font-awesome ttf-font-icons otf-fira-code gvim keepass jdk8-openjdk npm yarn i3blocks mutt

#pip3 install requests tldextract pykeepass pywal  youtube-dl i3ipc

# go get github.com/go-jira/jira/cmd/jira
# curl -L https://github.com/gokcehan/lf/releases/latest/download/lf-linux-amd64.tar.gz | tar xzC ~/.local/bin


# i3 config
mkdir -p ~/.config/i3

rm ~/.config/i3/config 
rm ~/.config/i3/compton.conf 
rm ~/.config/i3/rofi.rasi
rm ~/.config/i3/i3status.conf

ln -s ~/dotfiles/i3/config ~/.config/i3/config 
ln -s ~/dotfiles/i3/compton.conf ~/.config/i3/compton.conf 
ln -s ~/dotfiles/i3/rofi.rasi ~/.config/i3/rofi.rasi 
ln -s ~/dotfiles/i3/i3status.conf ~/.config/i3/i3status.conf 

# vim 
rm ~/.vimrc
ln -s ~/dotfiles/vim/vimrc ~/.vimrc

ln -s ~/dotfiles/vim/autoload ~/.vim/autoload
ln -s ~/dotfiles/vim/ftdetect ~/.vim/ftdetect
ln -s ~/dotfiles/vim/spell ~/.vim/spell
ln -s ~/dotfiles/vim/syntax ~/.vim/syntax
ln -s ~/dotfiles/vim/coc-settings.json ~/.vim/coc-settings.json

# i3blocks
rm -rf ~/.config/i3blocks
ln -s ~/dotfiles/i3blocks ~/.config/i3blocks
# qutebrowser
mkdir -p ~/.config/qutebrowser
rm ~/.config/qutebrowser/config.py
ln -s ~/dotfiles/qutebrowser/config.py ~/.config/qutebrowser/config.py

mkdir -p ~/.local/share/qutebrowser/userscript
rm ~/.local/share/qutebrowser/userscript
ln -s ~/dotfiles/qutebrowser/userscrips ~/.local/share/qutebrowser/userscript

mkdir  ~/.local/share/qutebrowser/greasemonkey
rm ~/.local/share/qutebrowser/greasemonkey
ln -s ~/dotfiles/qutebrowser/greasemonkey ~/.local/share/qutebrowser/greasemonkey

#zsh
rm ~/.zshrc
ln -s ~/dotfiles/zsh/zshrc ~/.zshrc

# kitty 
mkdir ~/.config/kitty
rm ~/.config/kitty/kitty.conf
ln -s ~/dotfiles/kitty/kitty.conf ~/.config/kitty/kitty.conf

# tmux 
rm ~/.tmux.conf
ln -s ~/dotfiles/tmux/tmux.conf .tmux.conf

# go jira 
rm -rf ~/.jira.d ; mkdir ~/.jira.d
ln -s ~/dotfiles/goJira/config.yml ~/.jira.d/config.yml
ln -s ~/dotfiles/goJira/templates ~/.jira.d/templates

# Git settings
rm -rf ~/.gitconfig
ln -s ~/dotfiles/git/gitconfig ~/.gitconfig

# coc vim packages


ln -s ~/dotfiles/coc/package.json ~/.config/coc/extensions/package.json
