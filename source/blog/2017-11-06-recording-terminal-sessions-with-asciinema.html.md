---
title: Recording terminal sessions with asciinema
date: 2017-11-06
tags: code
---

# Recording terminal sessions with asciinema

I was looking for a way to improve the README page of some of my projects by
showing a recording of a terminal session to explain how to use them.

There's a few packages for that like [simplescreenrecorder][1] to produce a
MPEG-4 or WebM video. And of course a GIF would the easiest to embed but it's
much too heavy for that.

That's when I found [asciinema][2], a cool free and open source solution to
simplify the process.

You launch it with `asciinema rec` in a terminal, then do your thing, finish by
typing `exit`, and that's it your recording will be uploaded to the website.
You can then embed it with a special JavaScript player or just link to the URL
with an image like the following examples.

I recorded an asciicast showing how to get the weather with [forecaster][3]:

[![asciicast](https://asciinema.org/a/146117.png)](https://asciinema.org/a/146117)

Another one for my chess engine [littlewing][4]:

[![asciicast](https://asciinema.org/a/146112.png)](https://asciinema.org/a/146112)

And a last one for [closh][5]:

[![asciicast](https://asciinema.org/a/146126.png)](https://asciinema.org/a/146126)

Thanks to asciinema my README pages are much prettier now.

[1]: http://www.maartenbaert.be/simplescreenrecorder
[2]: https://asciinema.org
[3]: https://github.com/vinc/forecaster
[4]: https://github.com/vinc/littlewing
[5]: https://github.com/vinc/closh
