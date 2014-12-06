#!/bin/sh
checkout=$(dirname $(readlink -f $0))
wwwroot=do.accela.cat:/srv/docker/nginx/itorres.net/site/
echo docker run --rm -v "${checkout}:/src" grahamc/jekyll build
echo rsync -lav ${checkout}/_site/ $wwwroot
