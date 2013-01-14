---
layout: post
created: 2005-11-06 17:04:14
published: false
slug: error-en-la-api-de-metaweblog-de-typo
template: null
title: Error en la API de metaweblog de typo
updated: 2010-03-25 17:44:22.310224
url: null

---

Acabo de instalarme [MarsEdit][]. Meto la URL base del weblog y encuentra la URL con la API MetaWeblog.

Hasta aqu&iacute; todo perfecto, pero cual es mi sorpresa al encontrarme con que no es capaz de recoger los antiguos mensajes obsequiandome con un cr&iacute;ptico mensaje "undefined method 'to_i' for true:TrueClass".

No termino de entender el por qu&eacute; de este error. A priori parece estar relacionado con ActiveRecord y que MySQL codifica los bool como tinyint(1) como se ve en el [ticket #637 de Ruby on Rails][1].

De cualquier forma, al final encontr&eacute; la soluci&oacute;n en el [Changeset 689 de typo][2].

[MarsEdit]: http://ranchero.com/marsedit/
[1]: http://dev.rubyonrails.org/ticket/637
[2]: http://typo.leetsoft.com/trac/changeset/689


