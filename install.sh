#!/bin/bash 


#pacman -Syu nodejs mpv qutebrowser kitty fzf ripgrep tmux neofetch 
#pip3 install requests tldextract pykeepass pywal  youtube-dl 


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

rm ~/.local/share/qutebrowser/userscript
ln -s ~/dotfiles/qutebrowser/userscrips ~/.local/share/qutebrowser/userscript

rm ~/.local/share/qutebrowser/greasemonkey
ln -s ~/dotfiles/qutebrowser/greasemonkey ~/.local/share/qutebrowser/greasemonkey


#zsh
rm ~/.zshrc
ln -s ~/dotfiles/zsh/zshrc ~/.zshrc

# kitty 
rm ~/.config/kitty/kitty.conf
ln -s ~/dotfiles/kitty/kitty.conf ~/.config/kitty/kitty.conf

