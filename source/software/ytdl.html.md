---
title: Ytdl
---
# ytdl

YouTube Video Downloader


## Genesis (2020-10-23)

Yesterday [YouTube-dl][1] received a [DMCA takedown from RIAA][2] and its
git repositories were disabled on GitHub. Well, that sucks.

It's such a great tool when you have a limited internet access to download
videos in the format of your choice instead of streaming them. But it did
a bit too much, including being able to download content protected by DRM
and the RIAA didn't like that.

In reaction to this I wrote a small tool in ruby called ytdl that do less
and focus on videos from YouTube without DRM.

[1]: https://github.com/ytdl-org/youtube-dl
[2]: https://github.com/github/dmca/blob/master/2020/10/2020-10-23-RIAA.md


## Installation

    > git clone https://github.com/vinc/ytdl
    > cd ytdl
    > gem build ytdl.gemspec && gem install ytdl-*.gem


## Usage

Show help:

    > ytdl --help
    Usage: ytdl [options] https://www.youtube.com/watch?v=<id>

    Options:
        -f, --format <code>              Video format code
        -F, --list-formats               List video format codes
        -v, --verbose                    Run verbosely
        -V, --version                    Show version
        -h, --help                       Show help

List video format codes:

    > ytdl "https://youtu.be/TLkA0RELQ1g" -F
    Video format codes:
        -f 360p
        -f 720p

Download video with format code:

    > ruby ytdl.rb "https://youtu.be/TLkA0RELQ1g" -f 360p
    Destination: Elephants_Dream_TLkA0RELQ1g.mp4
    Downloading: [#####-----------------------------] 17% of 43.00 MiB ETA: 00:01:42


## License

ytdl is released under MIT.
