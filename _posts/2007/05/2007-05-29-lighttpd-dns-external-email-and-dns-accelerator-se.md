---
layout: post
created: 2007-05-29 22:07:33
published: true
slug: lighttpd-dns-external-email-and-dns-accelerator-se
template: null
title: Lighttpd + DNS + external email and dns accelerator setup
updated: 2010-03-25 17:44:25.666403
url: null

---

#### Switching off the lights

    $ sudo svcadm disable apache2
    $ sudo svcadm disable webmin

#### Postfix

Now that the room is tidy let's configure our email (optional if you are using Google Apps for your domain).

Edit _/opt/csw/etc/postfix/main.cf_ and modify/add the following parameters:

    myhostname = accelerator.mydomain.net
    virtual_alias_domains = mydomain.net otherdomain.tld yetanotherdomain.tld

Edit _/opt/csw/etc/postfix/virtual_ and add your address maps, addresses with only @domain.tld are catch-all addresses:

    me@mydomain.net me@gmail.com
    you@domain.tld you@anotherhost.com
    @mydomain.tld myspammedmailbox@gmail.com

Regenerate the hash table of virtual addresses and restart postfix:

    $ sudo postmap /opt/csw/etc/postfix/virtual
    $ sudo svcadm restart postfix

#### BIND

Create a _/etc/named.conf_ file and your zones in _/var/named/_. You have [bind templates in textsnippets](http://textsnippets.com/tag/bind).

Generate a rndc password

    $ dnssec-keygen -a hmac-md5 -b 256 -n HOST mybrandnewkey

The result will be something like "K%2Ftmp%2Fmybrandnewkey.+157+42885". Read _K%2Ftmp%2Fmybrandnewkey.+157+42885.private_ and put the key in _/etc/rndc.key_:

    key "rndc-key" {
            algorithm hmac-md5;
            secret "Hr1U28EsMhp8r0TEEjAmksoldReEYuiWwQFH0/gkk6I=";
    };

Generate _/var/named/named.root_ with:

    $ dig @e.root-servers.net . ns > /var/named/named.root

And start your DNS server:

    $ sudo svcadm enable dns/server

#### lighttpd

Now edit _/opt/csw/etc/lighttpd.conf_ to suit your needs. You have plenty of [lighttpd.conf examples in textsnippets](http://textsnippets.com/tag/lighttpd). You can use _/opt/csw/php5/bin/php-cgi_ in your fastcgi configuration.

And, you guessed it, start lighttpd:

    $ sudo svcadm enable network/lighttpd

You can check your services with:

    $ sudo svcs -a
    $ sudo svcs -xv

Now you can get an account on [everydns.net](http://www.everydns.net/) and create a secondary domain pointing to your accelerator. You can also use the secondary dns services of [gandi.net](http://www.gandi.net) or your dns provider/registrar of choice.
