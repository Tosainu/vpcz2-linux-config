#!/bin/sh

pacman -Sy --noconfirm --needed acpid

cp -r acpi/handlers /etc/acpi/
cp acpi/events/* /etc/acpi/events/

systemctl enable acpid

cp xorg.conf.d/50-synaptics.conf /etc/X11/xorg.conf.d/

cp powersave/powersave /usr/local/bin/
cp powersave/powersave.service /etc/systemd/system/

systemctl enable powersave.service
