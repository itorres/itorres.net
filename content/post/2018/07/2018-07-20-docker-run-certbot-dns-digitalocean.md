---
date: "2018-07-20T00:00:00Z"
lang: en
published: true
title: '2018 wk.29: docker run certbot/dns-digitalocean'
---

I'm in the middle of migrating my home services from docker on NixOS
to a private [Joyent Triton][] deployment.

While doing this my certificates expired. A few years ago I settled on
using Google's [acme client][], but it has not been updated to Let’s
Encrypt v2 API. So I looked back on [certbot][] and, to my surprise,
it has two great additions:

- [Certbot Docker images][] (yes, it is *that long* since I last
  checked certbot)
- [DNS plugins][] to automate DNS management

tl;dr, this is how you use the [certbot-dns-digitalocean][] plugin
from docker to obtain a wildcard certificate.

```bash
docker run -ti --rm \
  -v /home/itorres/var/dockerdata/letsencrypt/var:/var/lib/letsencrypt \
  -v /home/itorres/var/dockerdata/letsencrypt/etc:/etc/letsencrypt \
  certbot/dns-digitalocean certonly --dns-digitalocean \
    --dns-digitalocean-credentials /etc/letsencrypt/secrets/do.ini \
	-d "itorres.net" -d "*.itorres.net"
```

I will definitely [donate to EFF][] for this.

[Joyent Triton]: https://www.joyent.com/triton/compute
[acme client]: https://github.com/google/acme
[certbot]: https://certbot.eff.org/
[Certbot Docker images]: https://hub.docker.com/u/certbot/
[DNS plugins]: https://certbot.eff.org/docs/using.html#dns-plugins
[certbot-dns-digitalocean]: https://certbot-dns-digitalocean.readthedocs.io/en/latest/
[donate to EFF]: https://supporters.eff.org/donate/support-work-on-certbot
[acme client]: https://github.com/google/acme
