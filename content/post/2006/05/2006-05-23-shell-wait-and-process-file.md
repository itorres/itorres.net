---
created: "2006-05-23 07:47:32"
date: "2006-05-23T00:00:00Z"
published: true
slug: shell-wait-and-process-file
template: null
title: 'Shell: wait and process file'
updated: "2010-03-25 17:44:34.983852"
url: null
---

This is a quick script I did this morning while waiting for a file to finish uploading. Originally it was a oneliner, but I've cleaned it a bit.

The script can also be used to burn an image with cdrecord after it finishes downloading. It should work on bourne and derivatives (ksh, bash, etc...)

	#!/bin/sh
	if [ $# -ne 2 ] ; then
	  echo "Usage: $0 <file> <command>"
	  exit
	fi
	
	file=$1; cmd=$2 #eg, unzip, "tar -xzf", etc...
	
	i=0;  j=$(du -k $file | cut -f 1)
	while [ $i -ne $j ]
	do
	  echo "Prev: $i Act: $j Cmd: $cmd $file"
	  sleep 5
	  i=$j
	  j=$(du -k $file | cut -f 1)
	  if [ $i -eq $j ]
	  then
	    $cmd $file
	  fi
	done


