---
date: "2016-08-29T00:00:00Z"
lang: en
published: true
title: '2016 wk.35: Back to FreeBSD'
---

13 Fructidor an 224 de la Révolution

### So long, GNU/Linux

After running [NixOS][] and [Guix][] on my laptop for the most part of
a year I decided to leave those behind and go back to [FreeBSD][].

[NixOS]: http://nixos.org/
[Guix]: http://www.gnu.org/software/guix/
[FreeBSD]: https://www.freebsd.org/

I really liked the concept of a purely functional distribution but I
really don't like the path Linux is going. I have no problems with
[launchd][] or [SMF][] but systemd is neither. The fact that
development of systemd started while SMF and launchd already existed
is a clear signal of [NIH syndrome][].

[launchd]: https://en.wikipedia.org/wiki/Launchd
[SMF]: https://en.wikipedia.org/wiki/Service_Management_Facility
[NIH syndrome]: https://en.wikipedia.org/wiki/Not_invented_here

Add to that the fact that [Nix Expressions][] feel alien and even the
promised land of idempotent configuration is not so enticing anymore.

[Nix Expressions]: http://nixos.org/nix/manual/#chap-writing-nix-expressions

So with that [Guix][] had my attention until we got to the point that
people will only take my ZFS datasets from my dead cold hands. i.e.,
I'm not willing to stop using the best filesystem humankind has known
[for a licensing issue][]. Especially when the GPL alternative is
[known to obliterate the user's data][].

[for a licensing issue]: https://sfconservancy.org/blog/2016/feb/25/zfs-and-linux/
[known to obliterate the user's data]: https://www.mail-archive.com/linux-btrfs@vger.kernel.org/msg55179.html

Hence, I'm back to [FreeBSD][]. Namely [TrueOS][], the rebranding of
[PCBSD][].

[TrueOS]: https://www.trueos.org/
[PCBSD]: http://pcbsd.org/

### ZFS data migration and TrueOS install

Coming from a ZFS enabled [NixOS][] the data migration was as easy as
creating a zpool on an external usb, making a snapshot of my home
dataset and copying it to the usb zpool. Roughly:

```bash
zpool create wd500 /dev/sdb
zfs create wd500/mig
zfs snapshot -r /home@migration
zfs send -R tank/home@migration | zfs receive -v wd500/mig/home
```

Meanwhile download the last [TrueOS][] usb image and copy it to an usb
key:

```bash
curl -o /tmp/trueos-latest.img http://download.trueos.org/master/amd64/latest.img
dd if=/tmp/trueos-latest.img of=/dev/sdc bs=1M
```

When both things are finished export the zpool and reboot just to do
things by the manual. I prefer to disconnect the USB drive to avoid
mistakes.

```
zpool export wd500
```

The TrueOS install process is easy so I won't get into details. After
I rebooted into my new system it was a simple matter of doing the same
process backwards. Import the USB drive zpool and transfer the
snapshot back:

```
zpool export wd500
zfs create tank/mig mountpoint=/usr/mig
zfs send -R wd500/mig/home@migration | zfs receive -v tank/mig/home
```

And from there simply put everything on it's place. For an instance I
have separate datasets for Media, ownCloud and Mail so:

```
for i in Maildir Media ownCloud; do
  zfs rename tank/mig/home/itorres/${i} tank/usr/home/itorres/${i}
done
```

### It's not simply the laptop

I have four servers at home:

- `venera13`: [SmartOS][] media server (6TB Raid1)
- `venera14`: [FreeBSD][] app server (1TB Raid1)
- `venera15`: [FreeBSD][] router
- `mir`: [NixOS][] app server (diverse disks)

The thing is that I'm getting old and I don't really want to run *BSD,
Linux and Illumos all at once at my home. So I wanted to settle on one
or two (one for desktop, another for servers).

I really like [SmartOS][] and [Illumos][] so before going _all in_
with FreeBSD I will probably decommission `mir` and reinstall it as a
[Triton][] head node.

[SmartOS]: https://www.joyent.com/smartos
[Illumos]: https://en.wikipedia.org/wiki/Illumos
[Triton]: https://www.joyent.com/triton
