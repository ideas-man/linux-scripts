#!/bin/sh

. "../utils.sh"

check_user

yay -S --noconfirm $(curl -s "https://gist.githubusercontent.com/ideas-man/20c1fa0e3442fc323b4c22deb42499ba/raw/yay.x13")
