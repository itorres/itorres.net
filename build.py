#!/usr/bin/env python
import os,sys
checkout=os.path.dirname(os.path.realpath(__file__))
wwwroot="root@itorres.net:/srv/docker/nginx/itorres.net/site/"
print 'docker run --rm -v "{checkout}:/src" grahamc/jekyll build'.format(checkout=checkout)
print 'rsync -xHlav "{checkout}/_site/" "{wwwroot}"'.format(checkout=checkout, wwwroot=wwwroot)

