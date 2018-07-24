---
date: "2013-06-06T00:00:00Z"
lang: en
published: true
title: 'bash oneliner: generate timestamps for this year'
---

To add partitions to some hive tables I need the YYYYmmdd timestamp of
every day from today until the end of the year.

    for i in $(seq 0 $(( $(date -d $(date +%Y)-12-31 +%j) - $( date +%j) )) ); do date +%Y%m%d -d "+$i day"; done

