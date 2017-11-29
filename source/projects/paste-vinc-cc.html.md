---
title: Paste.vinc.cc
---
# README

[Secure Markdown Pastebin][1]

[1]: https://paste.vinc.cc


## Markdown

Pastes should be written in a [Markdown][2] format following the [CommonMark][3]
specification with some additions from [GitHub Flavored Markdown][4].

### Parsers

Markdown is rendered on the server or the client, depending on whether
encryption has been used or not.

- Server side: [redcarpet][5]
- Client side: [markdown-it][6]

### Rendering options:

- Filter HTML
- [Nofollow][7] on links

### Extensions:

- Fenced code blocks
- Autolink

[2]: http://daringfireball.net/projects/markdown/
[3]: http://commonmark.org/
[4]: https://github.github.com/gfm/
[5]: https://github.com/vmg/redcarpet
[6]: https://github.com/markdown-it/markdown-it
[7]: https://en.wikipedia.org/wiki/Nofollow


## Syntax highlighting

Paste can contain fenced code blocks with an optional language name:

```ruby
module HelloWorld
  def print_hello
    puts "Hello, World!"
  end
end
```

Syntax highlighting is done in the browser with [highlight.js][8]

[8]: https://highlightjs.org/


## Cryptography

Pastes can be encrypted in the browser with a passphrase before being sent to
the server. The passphrase can be chosen by the user or randomly generated, in
any case it is never communicated to the server.

Client side cryptography is provided by [libsodium.js][9].

### [Random data generation][10]

- Source: [Web Cryptography API][11]

### [Secret-key authenticated encryption][12]

- Encryption: [Salsa20][13]
- Authentication: [Poly1305][14]

### [Key derivation][15]

- Function: [Scrypt][16]
- Parameters:
  - `memlimit`: 16 MB
  - `opslimit`: `memlimit` / 32

[9]: https://github.com/jedisct1/libsodium.js
[10]: https://download.libsodium.org/libsodium/content/generating_random_data/
[11]: https://developer.mozilla.org/en-US/docs/Web/API/RandomSource/getRandomValues
[12]: https://download.libsodium.org/libsodium/content/secret-key_cryptography/authenticated_encryption.html
[13]: https://en.wikipedia.org/wiki/Salsa20
[14]: https://en.wikipedia.org/wiki/Poly1305
[15]: https://download.libsodium.org/libsodium/content/password_hashing/scrypt.html
[16]: https://en.wikipedia.org/wiki/Scrypt


## Limits

- No more than 100 KB per paste
- No more than `n + 1` pastes per IP address in `10^n` seconds for `n` in `[0..3]`


## License

Copyright (c) 2017 Vincent Ollivier. Released under MIT.
