# README

Express middleware to rehost and resize images


## Install

    $ npm install rehost


## Usage

```javascript
var express = require('express');
var rehost = require('rehost');
var app = express();
app.use('/:rehost.:format', rehost());
app.listen(3000);
```

Requesting the following URL on the server:

http://localhost:3000/aHR0cDovL2V4YW1wbGUuY29tL2ltYWdlLnBuZw.jpg?resize=500x500

Will fetch, resize and convert the image at:

http://example.com/image.png

The source URL is encoded using "Base 64 Encoding with URL and Filename Safe
Alphabet" from [RFC 4648][1] without padding.

Example in JavaScript:

```javascript
var base64 = require('base64-url');
var url = 'http://example.com/image.jpg'
var enc = base64.encode(url);
```

Example in Ruby:

```ruby
require 'base64'
url = 'http://example.com/image.jpg'
enc = Base64.urlsafe_encode64(url, padding: false)
```

### Parameters

The `resize` parameter is a subset of [ImageMagick geometry][2]:
`<width>x<height>{!}`.

The `format` parameter to convert the image can be `jpg` or `png`.

The `rehost`, `resize` and `format` parameters can be in the query string or
the path of the request. They can also be defined in an optional `options`
object passed to the middleware function.

[1]: https://tools.ietf.org/html/rfc4648#section-5
[2]: http://www.imagemagick.org/Magick++/Geometry.html

### Caching

No caching is done on the server so it should be running behind a CDN.


## License

Copyright (c) 2017 Vincent Ollivier. Released under MIT.
