build:
	hugo --cleanDestinationDir --gc

sync: build
	rsync -xHlav public/ itorres@venera13.hs.xin.cat:/xin/www/itorres.net
