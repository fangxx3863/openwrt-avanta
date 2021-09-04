#!/bin/sh
# Copyright (C) 2014 OpenWrt.org

. /lib/functions/leds.sh
. /lib/kirkwood.sh

get_status_led() {
	case $(kirkwood_board_name) in
	hgg420n)
		status_led="hgg420n:green:power"
		;;
	esac
}

set_state() {
	get_status_led

	case "$1" in
	preinit)
		status_led_blink_preinit
		;;
	failsafe)
		status_led_blink_failsafe
		;;
	done)
		status_led_on
		;;
	esac
}
