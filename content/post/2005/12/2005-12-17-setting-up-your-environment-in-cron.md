---
created: "2005-12-17 18:09:00"
date: "2005-12-17T00:00:00Z"
published: true
slug: setting-up-your-environment-in-cron
template: null
title: Setting up your environment in cron
updated: "2010-03-25 17:44:34.945087"
url: null
---

After hearing lots of people stating things like these:

* _also of note. cron does not know your environment AT ALL. you need to provide full paths._
* _The bigger problem is that cron doesn't know about the user's environment._

I think this is the moment of showing a small proof of concept that those statemens are not 100% correct. Cron does not know about your environment, but you can set it up.

### 19:09
	#PATH=/bin:/usr/bin:/usr/local/sbin:/usr/local/bin:$HOME/bin
	@reboot /usr/local/sbin/lighttpd -f /home/itorres/etc/lighttpd.conf
	@daily /home/itorres/bin/stats
	10 19 * * * env
	14 19 * * * env

Which results in this nice mail:

	Subject: Cron <itorres@burnaby> env
	X-Cron-Env: <SHELL=/bin/sh>
	X-Cron-Env: <HOME=/users/home/itorres>
	X-Cron-Env: <PATH=/usr/bin:/bin>
	X-Cron-Env: <LOGNAME=itorres>
	X-Cron-Env: <USER=itorres>
	Message-Id: <20051217191001.23041A74EA@burnaby.textdrive.com>
	Date: Sat, 17 Dec 2005 19:10:01 +0000 (GMT)
	USER=itorres
	HOME=/users/home/itorres
	LOGNAME=itorres
	PATH=/usr/bin:/bin
	SHELL=/bin/sh

And afterwards this:

### 19:12

	PATH=/bin:/usr/bin:/usr/local/sbin:/usr/local/bin:$HOME/bin
	@reboot /usr/local/sbin/lighttpd -f /home/itorres/etc/lighttpd.conf
	@daily /home/itorres/bin/stats
	10 19 * * * env
	14 19 * * * env

With it's own result:

	Subject: Cron <itorres@burnaby> env
	X-Cron-Env: <PATH=/bin:/usr/bin:/usr/local/sbin:/usr/local/bin:$HOME/bin>
	X-Cron-Env: <SHELL=/bin/sh>
	X-Cron-Env: <HOME=/users/home/itorres>
	X-Cron-Env: <LOGNAME=itorres>
	X-Cron-Env: <USER=itorres>
	Message-Id: <20051217191400.9B31CA745D@burnaby.textdrive.com>
	Date: Sat, 17 Dec 2005 19:14:00 +0000 (GMT)
	USER=itorres
	HOME=/users/home/itorres
	LOGNAME=itorres
	PATH=/bin:/usr/bin:/usr/local/sbin:/usr/local/bin:$HOME/bin
	SHELL=/bin/sh

### Interesting points to remember:
1. The result of a cron job gets X-Cron-Env headers. Look for them for troubleshooting
2. You can alter the default Cron environment, just declare your variables at the start of the cronjob

### Playing even a bit more:
You can set different environments for different cron jobs:

	PATH=/bin:/usr/bin:/usr/local/sbin:/usr/local/bin:$HOME/bin
	@reboot /usr/local/sbin/lighttpd -f /home/itorres/etc/lighttpd.conf
	@daily /home/itorres/bin/stats
	20 19 * * * env
	PATH=/opt/local/tomato
	21 19 * * * env

### 19:20

	Subject: Cron <itorres@burnaby> env
	X-Cron-Env: <PATH=/bin:/usr/bin:/usr/local/sbin:/usr/local/bin:$HOME/bin>
	X-Cron-Env: <SHELL=/bin/sh>
	X-Cron-Env: <HOME=/users/home/itorres>
	X-Cron-Env: <LOGNAME=itorres>
	X-Cron-Env: <USER=itorres>
	Message-Id: <20051217192001.67C9AA743C@burnaby.textdrive.com>
	Date: Sat, 17 Dec 2005 19:20:01 +0000 (GMT)
	USER=itorres
	HOME=/users/home/itorres
	LOGNAME=itorres
	PATH=/bin:/usr/bin:/usr/local/sbin:/usr/local/bin:$HOME/bin
	SHELL=/bin/sh

### 19:21

	Subject: Cron <itorres@burnaby> env
	X-Cron-Env: <PATH=/opt/local/tomato>
	X-Cron-Env: <SHELL=/bin/sh>
	X-Cron-Env: <HOME=/users/home/itorres>
	X-Cron-Env: <LOGNAME=itorres>
	X-Cron-Env: <USER=itorres>
	Message-Id: <20051217192100.E2EEFA7250@burnaby.textdrive.com>
	Date: Sat, 17 Dec 2005 19:21:00 +0000 (GMT)
	env: not found

I expect the point is taken. If you need any clarification, don't hesitate to contact me.
