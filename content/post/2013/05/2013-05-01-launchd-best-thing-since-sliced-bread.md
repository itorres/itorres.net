---
date: "2013-05-01T00:00:00Z"
lang: en
published: true
title: 'launchd: the best thing since sliced bread'
---

I am developing a home utility to index and backup my files ([ook!][]) and while
searching for an alternative to inotify I found an StackOverflow question aptly
named "[Is there a command like “watch” or “inotifywait” on the Mac?][]" that
sums it up.

The thing is that it doesn't stop there. I always dreaded launchd and questioned
Apple's decision to use it instead of a System V init process.

But god, it can replace not only init but also cron and inotify. It really is
[one program to rule them all][]!

I'm sold. I only hope that this infatuation doesn't end with me hacking up a
launchd based distro.

[ook!]: https://github.com/itorres/ook
[Is there a command like “watch” or “inotifywait” on the Mac?]: http://stackoverflow.com/questions/1515730/is-there-a-command-like-watch-or-inotifywait-on-the-mac
[one program to rule them all]: http://youtu.be/SjrtySM9Dns
