.PHONY: all build sync serve

all: sync

build:
	@$(HOME)/.rbenv/shims/jekyll build

sync: build
	@aws s3 sync _site/ s3://itorres.net/
