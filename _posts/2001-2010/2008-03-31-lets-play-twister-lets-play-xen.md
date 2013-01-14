---
layout: post
created: 2008-03-31 23:54:04
published: true
slug: lets-play-twister-lets-play-xen
template: null
title: Let's play twister, let's play Xen
updated: 2010-03-25 17:44:25.612468
url: null

---

Yeah, yeah, yeah, yeah.

This morning I was beginning my journey in the fabulous world of Xen, among other things to enjoy [9xeninst.gz][1]. Then I found that Plan9 is built without PAE.

Easy peasy, I will install xen-hypervisor-3.0.3-1-i386 instead of xen-hypervisor-3.0.3-1-i386-pae, right?

Wrong, it's not that easy.

It seems that linux-image-2.6.18-6-xen-686 is built with PAE support by default and no, there's no linux-image-2.6.18-6-xen-686 vs linux-image-2.6.18-6-xen-686-pae like is the case with the hypervisor. And yes, to me it seems an egregious decision having a PAE-free hypervisor with a PAE-enbled kernel but... who knows?

Maybe in another reality where you are paid a penny for each automatic restart it makes sense.

There's only one turnaround: to build your Kernel from scratch. And you have [a fabulous guide][2] to do so.

Finally. Easy peasy.

[1]: http://www.kix.in/plan9/mirror/sources/xen/xen3/
[2]: http://blogs.ittoolbox.com/linux/locutus/archives/easily-build-a-debian-xen-kernel-package-without-pae-22254

