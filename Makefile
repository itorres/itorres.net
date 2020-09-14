build:
	hugo --cleanDestinationDir --gc

sync: build
	rsync -xHlav public/ hq.xin.cat:/srv/vhosts/itorres.net/www/