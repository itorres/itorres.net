---
layout: post
created: 2008-01-04 07:32:29
published: true
slug: theres-something-rotten-python-markdown
template: null
title: There's something rotten in python-markdown
updated: 2010-03-25 17:44:36.952457
url: null

---

So after 4 days of playing with django I decide it's time to deploy this nice website you are seeing. I check my server and see that I need to install Django and [python-markdown][0], after a couple of `python setup.py install` I think I'm done, but not quite.

All my entries with unicode values go into oblivion. I follow the session and get a UnicodeDecodeError. The markdown.py version in my laptop is 1.3 and in the server I installed 1.7 with fantabulous unicode support.

I don't know if the error is in python-markdown [or in the way it is called by django.contrib.markup][1], the quick fix has been using markdown.py 1.3 in the server and now that I can read my entries go hunt the bug.

[0]: http://sourceforge.net/projects/python-markdown/
[1]: http://www.freewisdom.org/projects/python-markdown/Using_as_a_Module
