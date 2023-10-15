#!/bin/sh

# A dwm_bar function that shows the current date and time
# Joe Standring <git@joestandring.com>
# GNU GPLv3

# Date is formatted like like this: "[Mon 01-01-00 00:00:00]"

dwm_soc () {
	printf "%s" "$SEP1"
        printf "%s" "$(linux-soc-dwm)"
	printf "%s\n" "$SEP2"
}

dwm_soc
