---
layout: post
created: 2004-11-04 15:45:30
published: false
slug: portaudit-override
template: null
title: Portaudit override
updated: 2010-03-25 17:44:30.647136
url: null

---

Tengase un FreeBSD en el escritorio. Quierase instalar KDE desde los ports. Se compilan las dependencias (KDE->QT->CUPS) y aquí es cuando la mata. Al tener instalado portaudit (security/portaudit) te enteras de que el CUPS es más malo para la salud de tu sistema que un ataque de gastroenteritis vírica. 

Actualizas los ports con cvsup y sigue diciendo que si quieres arroz, por lo que decides seguir adelante con dos cojones, gilipollas pero con dos cojones. Buscas en Google como coño saltarte el portaudit de marras y no lo encuentras, por lo que buceas por los Makefile incluidos (/usr/ports/Mk/*) y encuentras la variable de entorno mágica:

`make DISABLE_VULNERABILITIES=yes [install]`

Lo apuntas en tu blog en el que no escribes desde el año de la polca y te vas tranquilo a fumar un merecido cigarrillo mientras KDE sigue compilando. ¿Queda café?



