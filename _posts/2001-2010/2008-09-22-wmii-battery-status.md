---
layout: post
created: 2008-09-22 22:38:45
published: true
slug: wmii-battery-status
template: null
title: wmii battery status
updated: 2010-03-25 17:44:39.906011
url: null

---

A little code snippet to see the battery status in [wmii][]. Tested with Linux kernel 2.6.24.
[wmii]: http://www.suckless.org/wmii/

    acpi() {
        max=$(awk '/full capacity/ {print $4}' /proc/acpi/battery/BAT1/info)
        cur=$(awk '/remaining capacity/ {print $3}' /proc/acpi/battery/BAT1/state)
        st=$(awk '/charging state/ {print $3}' /proc/acpi/battery/BAT1/state)
        per=$(echo "scale=2; 100/($max/$cur)" | bc)
        [ "$st" = "discharging" ] && echo "B:$per" || echo "C:$per"
    }

    # Status Bar Info
    status() {
        echo -n $(uptime | sed 's/.*://; s/,//g') '|' $(date) '|' 
                $(acpi)
    }
