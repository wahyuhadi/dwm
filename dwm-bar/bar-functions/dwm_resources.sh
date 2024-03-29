#!/bin/sh

# A dwm_bar function to display information regarding system memory, CPU temperature, and storage
# Joe Standring <git@joestandring.com>
# GNU GPLv3

dwm_resources () {
    # Used and total memory
    MEMUSED=$(free -h | awk '(NR == 2) {print $3}')
    MEMTOT=$(free -h |awk '(NR == 2) {print $2}')
    # CPU temperature
    # Used and total storage in /home (rounded to 1024B)
    STOUSED=$(df -h | grep '/dev/nvme0n1p3' | awk '{print $3}')
    STOTOT=$(df -h | grep '/dev/nvme0n1p3' | awk '{print $2}')
    STOPER=$(df -h | grep '/dev/nvme0n1p3' | awk '{print $5}')

    printf "%s" "$SEP1"
    if [ "$IDENTIFIER" = "unicode" ]; then
        printf "MEM %s/%s  STO %s/%s: %s" "$MEMUSED" "$MEMTOT"  "$STOUSED" "$STOTOT" "$STOPER"
    else
        printf "STA | MEM %s/%s STO %s/%s: %s" "$MEMUSED" "$MEMTOT" "$STOUSED" "$STOTOT" "$STOPER"
    fi
    printf "%s\n" "$SEP2"
}

dwm_resources
