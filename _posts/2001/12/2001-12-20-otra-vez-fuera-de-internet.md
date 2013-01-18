---
layout: post
created: 2001-12-20 17:00:00
published: false
slug: otra-vez-fuera-de-internet
template: null
title: otra vez fuera de internet
updated: 2010-03-25 17:44:30.001020
url: null

---

Pero esta vez a lo gore. Ha desaparecido todo el bloque con 23 clases B:

	[root@voyager /root]# whois 66.96.215.131@whois.arin.net
	[whois.arin.net]
	Network Operations Center Inc. (NETBLK-HOSTNOC) HOSTNOC
	                                  66.96.192.0 - 66.96.255.255
	
	DataHostsNet (NETBLK-DATAHOSTSNET-010) DATAHOSTSNET-010
	                                  66.96.215.100 - 66.96.215.204

Lo que me hace pensar en tablas BGP, dado que los traceroute a veces no
pasaban del 4º <i>hop</i>. En un momento dado el servidor ha respondido con un
66% de pérdida de paquetes via CW, pero vía TDE seguía dando <i>host unreachable</i>.

