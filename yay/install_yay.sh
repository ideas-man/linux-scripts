#!/bin/sh

. "../.utils.sh"

echo -e "${BGR}>>> Installing AUR helper <<<${NC}"

check_user

cd /tmp
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg --noconfirm -si
cd ~

echo -e "${BGR}>>> Done! <<<{$NC}"
