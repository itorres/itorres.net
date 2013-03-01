---
layout: post
title: Experiences with a Nexus 7
lang: en
published: false
---

I've had the opportunity to use a [Nexus 7][] with [Android][] 4.2 for the past two weeks and I've been greatly impressed by the evolution of Android in the past two years. Especially by the apparition of some applications tailored for tablet use, though the good ones are mainly from Google. I used the mobile version and this constituted an experience of its own.

I've been an avid user of iOS devices (iPhone 3G-4, iPad 1-2) for the past years and comparing the two platforms I have found a lot of shortcomings in Android, both hardware ans software-wise, during these two weeks. And a few pleasant surprises.

Anyway prepare to read this word a lot of times: frustration.

### Hardware

The Nexus 7 is an incredible piece of hardware. The size and weight feel *just right* on my hands and the plastic case has a texture with an easy grip and a comfy feeling. The construction feels sturdy but nothing close to that of Apple's devices. You *need* a case with this device.

The first unpleasant surprise was finding that the Nexus 7 only does fast charging with its accompanying charger. I have a bazillion of USB chargers from different brands and all the phones and tablets we have had charge at a good rate with he only exception of the Nexus 7.

The battery life is really bad. With same rates of use the Nexus 7 lives less time than any of the iPads and even than the iPhone 4. Add to this that I only had fast charging at work or home, depending on where did I leave the charger, and this commences to be a bit alienating.

Also, for a device that has been in the market for 8 months there's a huge lack of accessories. Asus just launched this January the dock station announced on august and with the extra aggravation that it's $39 in the US and more than 120€ in EU.

And we finish with the radios. Android shines when online, it constantly exchanges data with Google to update applications and application data. This is what makes mobile computing *mobile* computing. I use my devices a lot in the terrace at home and at street level at work while smoking and I can connect to the base stations without problem.

Except with the Nexus 7.

Thanks to the mobile card it regained Internet connection but it's frustrating that I can connect at 10mbps through my home wifi with my 2 y/o iPhone 4 and that the Nexus has to go the UMTS way. Frustrating and expensive.

The UMTS radio is also worse than that of the iPhone 4. I compared them in different situations using the [Speedtest][] application with the same carrier and the 3G signal and data throughput were always feebler in the Nexus. No antennagate here?

### Software

#### The good

##### Multiuser accounts

One of the great things in Android 4.2 is multiple users. The ability to have a separate account for the kids where I can set up something like [Zoodles][] as the default launcher is incredible.

This also opens a new bag of completely different cats like a registered bug in which you cannot have the clock widget active in two accounts simultaneously or you'll get constant messages informing you that the Clock app crashed.

##### Parental Control

I mentioned [Zoodles][] and is an example of an application that makes the distinct capabilities of Android shine.

[Zoodles]: http://zoodles.com/

In iOS you can switch on Parental Control but that basically means setting up the device for the exclusive use of your child. If you want to play out of the restrictions you have to go to the control panel, enter your PIN, deactivate parental control and do what you wanted to do if you still remember it.

In Android you can set up an Application like Zoodle that becomes a launcher on its own. You can set up different profiles for different kids with different applications, videos and music. And the kids cannot close Zoodles without entering a PIN.

iOS has guided access to leave an application in kiosk mode. But this means that this is the only application that can be used and you have to set it up by triple tapping home *every single time*. Parental Control and Guided Access have no API so a programmer cannot turn them on programatically.

This is a great asset for a parent and Android's system model beats the shit out of iOS in this area a hundred times.

##### Google Platform

But what has impressed me the most is completely independent from Android OS and Asus hardware: the Google Platform of services.

Google Apps Integration with multiple accounts in every Google App except funnily enough, Chrome. Like many Google power users I have a Gmail account and, in addition, several Google Apps accounts. Being able to access all my data switching accounts through a convenient drop down menu is just __*purr*fect__.

My great surprise was Google Play Music. On the beginning I thought that the limit was 20.000MB and thought *"meh"* but when I noticed my error and found that it was 20.000 songs my mind exploded. This is a heavy kick in iTunes Match's groin. And don't get me started on the web player experience, the two ways desktop synchronization or the way Google+ sharing is integrated in the web player. Just one word Google: **MOAR**.

But in the same note I have to say: Google I'm your client in every platform I'm using. Just give me that experience on iOS or in the end I'll move out to more open systems.

#### The bad

##### Keyboard

This is theoretically one of Android's best features: the ability of replacing almost any system application. From the more mundane like a web browser or email client to the core ones like input devices or the application launcher itself.

One of the new 4.2 features was gesture typing. I couldn't use it because it's not supported when using Catalan language. And that's because the Catalan dictionary is nonexistent in stock Android. I tried using a few alternatives like [Hacker's keyboard][] and none of them was as good as iOS default dictionary.

Even worse. Every keyboard had a completely different feeling. Time of reaction, means of autocompletion, dictionaries. I finished using one keyboard for SSH, another one when writing Catalan and the stock Android when writing English or Spanish using gesture typing. The experience sucked.

It's almost impossible to create physical memory in these conditions. And I think that something so basic for the use of a platform as input devices shouldn't be left open to third parties if you want to 

##### Asynchronous multimedia

If your mind didn't screech reading this headline let me explain:

You are using your tablet, hearing local music while browsing. An email notification arrives and you notice it because the music jitters. You change to the Gmail application and the music jitters again. You open an attachment and... you guessed it. Jitter.

Ditto while watching videos or playing games: frame dropping. When this happens in a video you see pixelated video frames because some previous frames didn't make it into the decoder. If you are playing a video game you see bad animations due to some intermediate frames not arriving in time to or from the engine.

So multitasking my ass. There's something profoundly wrong in Android.

### The ugly

##### Cursor placement and text selection

Cursor placement is a nightmare in Android. The recommendation by many power users is to use the cursor keys in keyboard replacements like the aforementioned [Hacker's keyboard][]. This makes you avoid pasting text.

Text selection comes after. Double tap. Triple tap. Hadoken tap. You never know when the device register your taps so you try to avoid cutting text.

Mix them and it makes fixing a typing error or the rephrasing of a paragraph an exercise of, you guessed it, frustration.

## Addendum: Mobile computing in Spain

This final note is not Google's fault but it's important if you're going to use your device in Spain and you're thinking about getting the mobile version for commuting I have an advice for you:

Don't.

During these two weeks I have tried the four physical networks in Spain: Movistar, Vodafone, Orange and Yoigo, both directly and through [MVNOs]. I commute from Bages, in Central Catalonia, to Barcelona and I have done it through different ways:

* Highway, both by bus following the C-16 as by car following the C-16 and C-58.
* Railway, both with Rodalies and FGC.

This means following four different routes to Barcelona and every operator consistently dropped the connection or had weak signal areas where the constant change from GPRS to UMTS meant interruptions in the connection.

I suppose that static use in these areas is correct, but when you are an object moving between 50km/h and 100km/h roaming between cell towers the mobile network just can't follow you.

Sharing my data plan among different SIMs is relatively cheap and worth it if onle because this way when I use the tablet online it doesn't imply a battery drain on the phone. Anyway if I had a terminal with proper Wifi Hotspot functionality (read: not an iPhone) I would probably recommend not investing in the mobile version.

And about what was the best network, I was surprised to check that the best results where given by the [Vodafone][] network, both in terms of coverage, speed and upload speed. And the best value is given by [Pepephone][] a MVNO that uses the Vodafone network.

[Nexus 7]: http://en.wikipedia.org/wiki/Nexus_7
[Android]: http://en.wikipedia.org/wiki/Android_(operating_system)
[MVNOs]: http://en.wikipedia.org/wiki/Mobile_virtual_network_operator "Mobile virtual network operator"

[Pepephone]: http://www.pepephone.es/
[Vodafone]: http://www.vodafone.es/
[Hacker's keyboard]: http://url