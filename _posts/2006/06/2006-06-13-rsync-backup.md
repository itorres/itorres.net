---
layout: post
created: 2006-06-13 08:27:26
published: false
slug: rsync-backup
template: null
title: rsync backup
updated: 2010-03-25 17:44:32.677913
url: null

---

Yet another backup script. There exist a gazillion like it, but this one is mine and do things my way.

I run this one from my 24/7 EPIA box at home every 6 hours. The first step it does is synchronize my hosting data to a local directory inside my $HOME and then sync $HOME with a remote fileserver, I use [StrongSpace][ss].

I could improve it (use functions, etc...), but I'm a dog.

<http://ignacio.torresmasdeu.name/stuff/SSbackup.txt>

[ss]: http://www.strongspace.com/


