TOP := $(dir $(lastword $(MAKEFILE_LIST)))
TARGET = /home/itorres/var/dockerdata/www
.PHONY: all build sync serve

all: serve

build:
	docker run --rm --label=jekyll --volume=$(CURDIR):/srv/jekyll -it jekyll/jekyll jekyll build
	[ -d  _gopher ] || mkdir _gopher
#	echo "Online diary since 2001" > _gopher/.abstract
#	cp -al _posts/*/*/* _gopher

sync: build
	rsync --delete -salv _gopher/ hq.xin.cat:$(TARGET)/gopher/notes/
	rsync --delete -salv $(CURDIR)/_site/ hq.xin.cat:$(TARGET)/itorres.net/

serve:
	docker kill itorres.net-serve > /dev/null 2>&1 && docker rm itorres.net-serve || true
	docker run --name itorres.net-serve --rm --label=jekyll --volume=$(CURDIR):/srv/jekyll -it -p 4000:4000 jekyll/jekyll jekyll s -V --future
