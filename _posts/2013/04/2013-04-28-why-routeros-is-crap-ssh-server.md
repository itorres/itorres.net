---
layout: post
published: true
title: Why RouterOS is crap: SSH server implementation
lang: en
---

[RFC 4344][] (2006):

> 6\.2.  Encryption Method Considerations
>
> Researchers have shown that the original CBC-based encryption methods in \[RFC4253\] are vulnerable to chosen-plaintext privacy attacks \[DAI,BKN1,BKN2\].  The new stateful-decryption counter mode encryption methods described in Section 4 of this document were designed to be secure replacements to the original encryption methods described in \[RFC4253\].

[RFC 4344]: http://www.ietf.org/rfc/rfc4344.txt

You guessed it, RouterOS **only** supports CBC-based encryption methods. To wit:

* 3des-cbc
* aes128-cbc
* aes192-cbc
* aes256-cbc
* blowfish-cbc

Not a big issue unless you are using an SSH library that follows RFC4344 like the one in [Go][].

[Go]: http://golang.org/