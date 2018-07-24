---
created: "2007-12-28 09:21:48"
date: "2007-12-28T00:00:00Z"
published: true
slug: i-m-in-love-with-python
template: null
title: I'm in love with Python
updated: "2010-03-25 17:44:24.121189"
url: null
---

Snip:

```python
import os
import md5
for root,dirs,files in os.walk('/home/itorres/Media/Video/test'):
  for file in files:
    fp  = os.path.join(root,file)
    fp5 = md5.new(open(fp).read()).hexdigest()
    print "%s\n\t%s" % (fp,fp5,)
```
        
Boom! a quick inventory of my media with md5 checksum so I can search for duplicates based on it. For simplicity's sake I made a database and metadata free version, only the directory walk, file read, md5 hash and print it.

Now, how does that look in php?

```php
<?php
$dh = opendir('/home/itorres/Media/Video/test');
while (false !== ($file = readdir($dh))) {
    $fp = '/home/itorres/Media/Video/test' . '/' . $file;
    if(is_file($fp))
            echo "$fp\n\t" . md5_file($fp);
}
closedir($dh);
```

And how does it compare speed-wise? Notice that the php version does **not** walk the directory.

```
$ echo "Python" ; time python test.py ; echo "PHP" ; time php -f test.php
Python
/home/itorres/Media/Video/test/Homo Futurus.avi
    4cfee62066a1fbebc957f9b2cc8275ff
/home/itorres/Media/Video/test/El mayor error de Einstein.avi
    180ce7eeee86ae6bc5eabbfa9e577dce
real    0m5.299s
user    0m3.060s
sys     0m1.272s
PHP
/home/itorres/Media/Video/test/Homo Futurus.avi
    4cfee62066a1fbebc957f9b2cc8275ff
/home/itorres/Media/Video/test/El mayor error de Einstein.avi
    180ce7eeee86ae6bc5eabbfa9e577dce
real    0m9.289s
user    0m6.264s
sys     0m0.596s
```
