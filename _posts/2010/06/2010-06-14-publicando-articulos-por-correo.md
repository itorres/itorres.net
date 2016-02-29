---
layout: post
created: 2010-06-14 13:44:42
published: true
slug: publicando-articulos-por-correo
template: null
title: "Publicando artículos por correo"
updated: 2010-06-14 13:48:14.309685
url: null

---

Me gusta mucho [Posterous][] como concepto. Sin embargo se por experiencia que
los servicios online de weblogs no me suelen ir bien a medio plazo.

El principal factor que me echa para atrás es no controlar las URLs. Mis URLs
son mías. Me planteé poner un reverse proxy delante de posterous pero al final
resulta más facil recibir los correos. El artículo
[Receiving Mail][gae-recvmail] de la documentación de Google AppEngine explica
paso a paso como hacerlo.

Y esta entrada es la prueba de que funciona. A la quinta.

El problema que me he encontrado es la codificación de las cabeceras de
correo. En estas latitudes tenemos la mala costumbre de escribir con acentos,
bien mediante ISO-8859-1 o, como en el caso de cualquier persona que viva en
este siglo, UTF-8. Y las librerías de python 2.x para correo apestan en ese
sentido.

```python
subject,encoding  = decode_header(mail_message.subject)[0]
if encoding == None:
  subject=subject.decode("utf8")
else:
  subject=subject.decode(encoding)
```

[posterous]: http://posterous.com/
[gae-recvmail]: http://code.google.com/appengine/docs/python/mail/receivingmail.html

