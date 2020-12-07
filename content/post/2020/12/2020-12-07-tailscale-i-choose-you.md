---
date: '2020-12-07T15:57:34+0000'
lang: en
draft: false
title: '2020 wk.50: Tailscale I choose you'
---

A few days ago I decided to try [Tailscale](https://tailscale.com/)
and I'm not looking back. It's been a long time since I had an
experience this good with something which usually is
as cumbersome as VPN management.

Setting it up is really simple, there's an app for your preferred
platform, in Ubuntu you can install it with an Ansible playbook like this one:

```
  - name: add tailscale apt-key
    ansible.builtin.apt_key:
      url: https://pkgs.tailscale.com/stable/ubuntu/focal.gpg
  - name: add tailscale repository
    ansible.builtin.get_url:
      url: https://pkgs.tailscale.com/stable/ubuntu/focal.list
      dest: /etc/apt/sources.list.d/tailscale.list
      mode: '0644'
  - name: Install tailscale and update apt cache
    ansible.builtin.apt:
      name: tailscale
      update_cache: yes
```

Then you authenticate your nodes through your control panel and they
conform a mesh. And that's it, profit.

A possible next step you can follow is setting up a filtering DNS like
[Pihole](https://pi-hole.net/) in one of your boxes (use one
geographycally close to you) and have Ad free browsing from all your
devices even when you're out of your LAN.

Tailscale has another great feature named Magic DNS that automatically
generates a DNS entry for your nodes. I found [an issue when having
Magic DNS enabled and a DNS server with an address in the Tailscale
range](https://github.com/tailscale/tailscale/issues/993) (CGNat,
100.64.0.0/10) but it's easy to work around this for the time being by
disabling Magic DNS, creating a subdomain for your Tailscale hosts
and adding it to the search domains.

5/5, would recommend.
