#
# Copyright (C) 2014 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/F660
  NAME:=ZTE F660
  PACKAGES:= \
	kmod-usb2 kmod-usb-storage \
	kmod-leds-gpio kmod-ledtrig-netdev \
	kmod-ledtrig-usbdev wpad-mini \
	swconfig
endef

define Profile/F660/Description
 Package set compatible with ZTE F660.
endef

F660_UBIFS_OPTS:="-m 512 -e 15872 -c 8192"
F660_UBI_OPTS:="-m 512 -p 16KiB -s 256"

$(eval $(call Profile,F660))
