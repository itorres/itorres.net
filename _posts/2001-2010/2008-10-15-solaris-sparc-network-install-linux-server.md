---
layout: post
created: 2008-10-15 14:20:26
published: true
slug: solaris-sparc-network-install-linux-server
template: null
title: Solaris SPARC network install from linux server
updated: 2010-03-25 17:44:35.453898
url: null

---

Ok. First we need the correct pinout for the serial port. I obtained them from Sun's [Netra T1 Server User Guide][netra]:

**DB25M to RJ45F**

    Pin 1 (RTS)           Pin 5 (CTS)
    Pin 2 (DTR)           Pin 6 (DSR)
    Pin 3 (TXD)           Pin 3 (RXD)
    Pin 4 (Signal Ground) Pin 7 (Signal Ground)
    Pin 5 (Signal Ground) Pin 7 (Signal Ground)
    Pin 6 (RXD)           Pin 2 (TXD)
    Pin 7 (DSR)           Pin 20 (DTR)
    Pin 8 (CTS)           Pin 4 (RTS)

**DB9F to RJ45F**

    Pin 1 (RTS)           Pin 8 (CTS)
    Pin 2 (DTR)           Pin 6 (DSR)
    Pin 3 (TXD)           Pin 2 (RXD)
    Pin 4 (Signal Ground) Pin 5 (Signal Ground)
    Pin 5 (Signal Ground) Pin 5 (Signal Ground)
    Pin 6 (RXD)           Pin 3 (TXD)
    Pin 7 (DSR)           Pin 4 (DTR)
    Pin 8 (CTS)           Pin 7 (RTS)

While you set up your serial cable you can download your Solaris media from Sun.

The prerequisites (yes, the kernel based nfs server won't work. And I learned it the hard way):

**boot server:**

    # apt-get install atftpd bootparamd rarpd

**NFS server:**

    # apt-get install nfs-user-server

**NFS server:** Next we copy the needed directories from the install media to our NFS server:

    # cd /cdrom
    # find . -depth -print | cpio -dump /srv/boot/sparc

**boot server:** Set the ip address of the target system in your /etc/ethers file for use by the rarpd daemon:

    00:01:02:03:04:05 201.202.203.204

**boot server:**  From the *Tools* directory we need to copy the boot image for our architecture to the tftpboot directory. The target system will ask for a file named as its IP in hexadecimal notation, There are several utilities for that, but this [ip translation utility in kloth.net][iplocate] works like a charm.:

    # cp /srv/boot/sparc/Solaris_10/Tools/Boot/usr/platform/sun4u/lib/fs/nfs/inetboot /tftpboot/inetboot-sun4u
    # ln -s /tftpboot/inetboot-sun4u /tftpboot/C9CACBCC
    # ln -s /tftpboot/inetboot-sun4u /tftpboot/C9CACBCC.SUN4U

**boot server:** Set the boot parameters in /etc/bootparams:

    netra root=<nfsserver_ip>:/srv/boot/sparc/Solaris_10/Tools/Boot 
     install=<nfsserver_ip>:/srv/boot/sparc 
     rootopts=<nfsserver_ip>:rsize=32768 
     boottype=<nfsserver_ip>:in

**boot server:** Restart the affected daemons:

    # /etc/init.d/rarpd restart
    # /etc/init.d/bootparamd restart

**target system:** Start the network install

    ok  boot net -v - install

Last, but not least, [this document][invaluable] has been invaluable for troubleshooting.

[netra]: http://docs.sun.com/app/docs/doc/806-5978-11
[invaluable]: http://appimptech.com/docs/install-solaris.html
[iplocate]: http://www.kloth.net/services/iplocate.php
