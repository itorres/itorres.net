---
layout: post
created: 2008-09-29 10:25:22
published: true
slug: novatel-mc950d-and-linux
template: null
title: Novatel mc950d on linux
updated: 2010-03-25 17:44:28.913637
url: null

---

I tried every method I found to make it work. What finally works for me is ejecting the virtual cdrom.

    itorres@itorres-laptop:~$ tail -100 /var/log/messages | grep "scsi generic"
    Sep 29 11:10:34 itorres-laptop kernel: [ 1246.265124] sr 12:0:0:0: Attached scsi generic sg2 type 5
    itorres@itorres-laptop:~$ sudo eject /dev/sg2

With this the /dev/ttyUSB* devices appear. Add your wvdial recipes to /etc/wvdial.conf and you're ok to go.

    # /etc/wvdial.conf
    [Dialer Defaults]
    Phone = *99***1#
    Username = MOVISTAR
    Password = MOVISTAR
    Dial Command = ATDT
    Stupid Mode = 1
    
    [Dialer pin]
    Modem = /dev/ttyUSB0
    Init1 = AT+CPIN= 1234
    
    [Dialer reset]
    Modem = /dev/ttyUSB0
    Init1 = AT
    
    [Dialer movistar]
    Phone = *99***1#
    Modem = /dev/ttyUSB0
    Baud = 460800
    Init2 = ATZ
    Init3 = ATQ0 V1 E1 S0=0 &C1 &D2 +FCLASS=0
    ISDN = 0
    Modem Type = USB Modem
    Init5 =AT+CGDCONT=1,"IP","movistar.es";


