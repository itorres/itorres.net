---
layout: post
created: 2010-03-23 13:43:34
published: true
slug: app-engine-timezone-woes
template: null
title: App Engine timezone woes
updated: 2010-03-25 17:44:18.244152
url: null

---

After dealing with timezone support in Google App Engine (GAE) I have the content engine in a state I feel comfy enough to start writing entries with it.

I imported all my past entries and noticed that they were recorded into the datastore without timezone information. I checked the [Google App Engine documentation][2] and found that it was my fault for not converting them to UTC.

I then decided to have all my timestamps to be UTC so I tried converting them using "astimezone". And the datastore answered "no cookie for you".

The thing is that when you persist a datetime object there are two options, as I learned in the article [Support Timezones in Google App Engine][3] by [Ben Davies][bd]:

- You persist a _naive_ datetime, this is, the tzinfo attribute of your datetime is `None`. This datetime will go as is to the datastore.
- Your datetime has a tzinfo object associated, so it gets converted to UTC and persisted in the datastore.

Without the tzinfo attribute you cannot use the `astimezone()` method. This is a [registered GAE bug][bug]. What next?

- Use [pytz][] to have a database of timezones. There's a [gae-pytz][] project that packs the library so you don't hit the file limit of GAE.
- Create a couple of filters. One to show the date in [ISO 8601][iso8601] format in the atom feed, the other to convert the timezone of the datetime object in the view.
    
        from datetime import datetime, timedelta, tzinfo
        from google.appengine.ext import webapp
        from pytz.gae import pytz
        
        register = webapp.template.create_template_register()
        utc = pytz.timezone('UTC')
        
        @register.filter
        def tolocal(date,tz="CET"):
            local = pytz.timezone(tz)
            return utc.localize(date).astimezone(local)
        
        @register.filter
        def isodatetime(date):
            return utc.localize(date).isoformat()

So now my times are correct. And my AJAX administration zone is ugly but functional. Anybody wants a custom CMS for their [Google Apps][ga] domain?

[bug]: http://code.google.com/p/googleappengine/issues/detail?id=2923
[2]: http://code.google.com/appengine/docs/python/datastore/typesandpropertyclasses.html#DateTimeProperty
[3]: http://www.learningtechnicalstuff.com/2009/11/support-timezones-in-google-app-engine.html

[bd]: http://www.blogger.com/profile/15225977828752157616
[ga]: http://www.google.com/a/
[pytz]: http://pytz.sourceforge.net/
[gae-pytz]: http://code.google.com/p/gae-pytz/
[iso8601]: http://en.wikipedia.org/wiki/ISO_8601
