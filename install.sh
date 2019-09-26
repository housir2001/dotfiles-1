#!/bin/bash 


# i3 config

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

# qutebrowser
rm ~/.config/qutebrowser/config.py
ln -s ~/dotfiles/qutebrowser/config.py ~/.config/qutebrowser/config.py

#zsh
rm ~/.zshrc
ln -s ~/dotfiles/zsh/zshrc ~/.zshrc

