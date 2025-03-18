#!/bin/sh

. "../.utils.sh"

check_root

pacman -S --noconfirm $(curl -s "https://gist.githubusercontent.com/ideas-man/20c1fa0e3442fc323b4c22deb42499ba/raw/pacman.x13")

