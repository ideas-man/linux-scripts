#!/bin/sh

cd -- "$(dirname -- "$0")"

. "../.utils.sh"

check_root

DEVICE="$(cd /sys/class/backlight; find . -mindepth 1 -maxdepth 1 -type d,l | head -1 | sed 's|^\./||')"

[ "$DEVICE" ] || exit 1

install -Dm 644 "./45-backlight.rules" "/etc/udev/rules.d/45-backlight.rules"
sed -i "s|{{DEVICE}}|$DEVICE|g" "/etc/udev/rules.d/45-backlight.rules"


