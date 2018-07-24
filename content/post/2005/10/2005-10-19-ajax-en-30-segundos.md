---
created: "2005-10-19 09:00:00"
date: "2005-10-19T00:00:00Z"
published: true
slug: ajax-en-30-segundos
template: null
title: AJAX en 30 segundos
updated: "2010-03-25 17:44:17.963412"
url: null
---

Es lo que promete el artículo [Rasmus' 30 second AJAX Tutorial][1], explicado de forma m&aacute;s que sencilla. Si me da el aire lo traducir&eacute;.

Interesante mejora para el c&oacute;digo del que habla:

	if(window.XMLHttpRequest) {
		try {
			var req = new XMLHttpRequest();
		} catch(e) {
			var req = false;
		}
	} else if (window.ActiveXObject)

[1]: http://rajshekhar.net/blog/archives/85-Rasmus-30-second-AJAX-Tutorial.html "Rasmus' 30 second AJAX Tutorial"


