#!/bin/sh

cd -- "$(dirname -- "$0")"

. "../.utils.sh"

check_root

: ${DEVICE:="$(cd /sys/class/backlight; find . -mindepth 1 -maxdepth 1 -type d,l | head -1 | sed 's|^\./||')"}
MAX_BRIGHTNESS=$(cat "/sys/class/backlight/$DEVICE/max_brightness")
BRIGHTNESS=$(($MAX_BRIGHTNESS * 3/4))

[ "$DEVICE" ] || exit 1

install -Dm 644 "./81-backlight.rules" "/etc/udev/rules.d/81-backlight.rules"
sed -i "s|{{DEVICE}}|$DEVICE|g; s|{{VALUE}}|$BRIGHTNESS|" "/etc/udev/rules.d/81-backlight.rules"
