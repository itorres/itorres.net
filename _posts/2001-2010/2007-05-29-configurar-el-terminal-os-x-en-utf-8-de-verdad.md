---
layout: post
created: 2007-05-29 19:59:26
published: true
slug: configurar-el-terminal-os-x-en-utf-8-de-verdad
template: null
title: Configurar el Terminal OS X en UTF-8... de verdad
updated: 2010-03-25 17:44:20.194148
url: null

---

Recogido de una nota de  Mietek Bąk](http://desp.night.pl/terminal.html)

En el inspector de terminal (Apple-I):

* En el apartado _Emulación_ desactivar la opción _Escapar los caracteres que no sean ASCII_.
* En la sección _Visualización_ elegir _Unicode (UTF-8)_ como codificación de los caracteres.

Añadir la siguiente linea al archivo _.profile_:

    export LC_CTYPE=es_ES.UTF-8

Añadir las siguientes líneas al archivo _.inputrc_:

    set meta-flag on
    set input-meta on
    set output-meta on
    set convert-meta off

Los cambios se pueden aplicar mediante:

    $ . ~/.profile
    $ bind -f ~/.inputrc

Tengo la sana costumbre de establecer sesiones ssh con hosts remotos y usar screen en el servidor. Para ello los cambios realizados en los archivos _.inputrc_ y _.profile_ deben repetirse en cada host remoto y ejecutar screen con la opción -U.

#### FAQ:

- *P:* Uso MacOS X 10.4 y esto no tira macho.
- *R:* Añade una clave @LC_CTYPE@ con el valor @es_ES.UTF-8@ al diccionario raíz del archivo _~/.MacOSX/environment.plist_.
