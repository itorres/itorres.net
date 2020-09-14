build:
	hugo --cleanDestinationDir --gc

sync: build
	rsync -n -xHlav public/ hq.xin.cat:/srv/vhosts/itorres.net/www/