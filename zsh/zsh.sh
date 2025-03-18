#!/bin/sh

. "../.utils.sh"

echo -e "${BGR}>>> Setting zsh shell for the user and root <<<${NC}"

check_user

sudo mkdir -p /var/cache/zsh/
sudo mkdir -p /etc/pacman.d/hooks/
sudo install -Dm 644 -t /etc/pacman.d/hooks/ ./zsh.hook

mkdir -p $HOME/.cache/zsh
chsh -s /usr/bin/zsh
sudo chsh -s /usr/bin/zsh

echo -e "${BGR}>>> Done! <<<${NC}"
