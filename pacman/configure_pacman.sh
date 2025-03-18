#!/bin/sh

. "../.utils.sh"

echo -e "${BGR}>>> Setting up pacman <<<${NC}"

check_root

pacman -Sy --noconfirm artix-archlinux-support archlinux-keyring artix-keyring
cat "./pacman.conf" | tee -a /etc/pacman.conf

pacman-key --init
pacman-key --populate archlinux artix
pacman --noconfirm -Scc
pacman --noconfirm -Syyu

echo -e "${BGR}>>> Done! <<<${NC}"
