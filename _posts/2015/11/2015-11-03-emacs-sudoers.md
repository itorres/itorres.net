---
published: true
layout: post
title: "2015 wk.45: Emacs talk at sudoers bcn - Coders at Work"
lang: en
include: sudoers.org
---

Today I did a presentation in the [November suders meetup][sudoers201511] explaining why I switched to Emacs [earlier this year][]. I used [an orgfile][] as a base and walked through it, doing demonstrations of different Emacs functionalities as org-mode, tramp, shells, magit, projectile and use-package. In that orgfile there's this excerpt:

> # Intermission: motivation to check emacs for the nth time

> One of the reasons I grew curious about Emacs again in the last years was due to [Brad Fitzpatrick][]'s mention on [Coders at Work][].

> Meanwhile I liked the notion of the integrating editor [propounded](http://research.swtch.com/acme) by [Acme](https://en.wikipedia.org/wiki/Acme_(text_editor)). In late 2014 I tried Acme for the nth time both in [Plan9](https://en.wikipedia.org/wiki/Plan_9_from_Bell_Labs) through [drawterm](https://swtch.com/drawterm/), in [Plan 9 from User Space](https://swtch.com/plan9port/) and in the [Inferno](https://en.wikipedia.org/wiki/Inferno_%2528operating_system%2529) based [Acme: Stand Alone Complex](https://code.google.com/p/acme-sac/). Yes, I'm also a Plan9 fan.

> Another reason was by osmosis in one of my last gigs where the CTO was an avid Emacs user.

> Also, the classical joke saying that Emacs would be a nice OS if it had a half-decent text editor is now applicable to Eclipse. Emacs is lightweight by today's standards.

> There are other reasons like wanting my base tools to be Open Source and that learning Lisp is more compelling than learning the vim macro language.

[sudoers201511]: http://lanyrd.com/2015/sudoersbcn/
[earlier this year]: /2015/03/04/emacs/
[Coders at work]: http://codersatwork.com/
[an orgfile]: /s/2015/11/sudoers.org

I forgot to mention some functionalities I continually use: [org-mode as a daily planner][], [helm-dash][] to consult context API [documentation from Dash][] and [wordnut][] to consult the [wordnet][] lexical database for English or [flycheck][] to do syntax checking of different languages.

Also, a great way to do a fast start in Emacs is to use [Prelude][], an already configured and somewhat opinionated Emacs distribution.

[Prelude]: https://github.com/bbatsov/prelude

[helm-dash]: https://github.com/areina/helm-dash
[org-mode as a daily planner]: http://newartisans.com/2007/08/using-org-mode-as-a-day-planner/
[documentation from Dash]: https://kapeli.com/dash#docsets
[wordnut]: https://github.com/gromnitsky/wordnut
[wordnet]: http://wordnet.princeton.edu/
[flycheck]: http://www.flycheck.org/

Some people shown interest in my reference to the [Coders at Work][] book by [Peter Seibel][] so I'm linking to its website. The book consists of great interviews to 15 of the best programmers of all time, namely:

[Peter Seibel]: http://www.gigamonkeys.com/

- [Frances Allen][]: Pioneer in optimizing compilers, first woman to win the Turing Award (2006) and first female IBM fellow
- [Joe Armstrong][]: Inventor of Erlang
- [Joshua Bloch][]: Author of the Java collections framework, now at Google
- [Bernie Cosell][]: One of the main software guys behind the original ARPANET IMPs and a master debugger
- [Douglas Crockford][]: JSON founder, JavaScript architect at Yahoo!
- [L. Peter Deutsch][]: Author of Ghostscript, implementer of Smalltalk-80 at Xerox PARC and Lisp 1.5 on PDP-1
- [Brendan Eich][]: Inventor of JavaScript, CTO of the Mozilla Corporation
- [Brad Fitzpatrick][]: Writer of LiveJournal, OpenID, memcached, and Perlbal
- [Dan Ingalls][]: Smalltalk implementor and designer
- [Simon Peyton Jones][]: Coinventor of Haskell and lead designer of Glasgow Haskell Compiler
- [Donald Knuth][]: Author of _The Art of Computer Programming_ and creator of TeX
- [Peter Norvig][]: Director of Research at Google and author of the standard text on AI
- [Guy Steele][]: Coinventor of Scheme and part of the Common Lisp Gang of Five, currently working on Fortress
- [Ken Thompson][]: Inventor of UNIX
- [Jamie Zawinski][]: Author of XEmacs and early Netscape/Mozilla hacker

[Frances Allen]: http://codersatwork.com/fran-allen.html
[Joe Armstrong]: http://codersatwork.com/joe-armstrong.html
[Joshua Bloch]: http://codersatwork.com/joshua-bloch.html
[Bernie Cosell]: http://codersatwork.com/bernie-cosell.html
[Douglas Crockford]: http://codersatwork.com/douglas-crockford.html
[L. Peter Deutsch]: http://codersatwork.com/l-peter-deutsch.html
[Brendan Eich]: http://codersatwork.com/brendan-eich.html
[Brad Fitzpatrick]: http://codersatwork.com/brad-fitzpatrick.html
[Dan Ingalls]: http://codersatwork.com/dan-ingalls.html
[Simon Peyton Jones]: http://codersatwork.com/simon-peyton-jones.html
[Donald Knuth]: http://codersatwork.com/donald-knuth.html
[Peter Norvig]: http://codersatwork.com/peter-norvig.html
[Guy Steele]: http://codersatwork.com/guy-steele.html
[Ken Thompson]: http://codersatwork.com/ken-thompson.html
[Jamie Zawinski]: http://codersatwork.com/jamie-zawinski.html

This list has been blatantly copy pasted from the Amazon listing.

