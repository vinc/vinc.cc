---
title: Reviewing August 2024
date: 2024-09-01
tags: news, cloudcheck.cc, goodbot.club, ai
---

# Reviewing August 2024

This month was dedicated to [CloudCheck][1], a project I've been thinking about
since early 2023 to help small teams [reduce cloud waste][2]. Many startups
lack dedicated devops or the time to continuously monitor and optimize their
server usage. I've experienced this issue firsthand in previous jobs, and it's
also easy for hobbyists to forget a server running in the clouds and keep
paying for it for a long time.

I built a simple MVP using Ruby 3.3 and Rails 7.2 ([released this month][3]) to
monitor my AWS and DigitalOcean accounts. Over the course of the month, I added
generic cloud support so it could also be applied to the Proxmox servers in my
homelab and various Raspberry Pi servers around the house.

I went down a rabbit hole exploring the `/proc` filesystem on Linux to get the
necessary metrics for auditing a server. I created a simple bash script that
can be called by a cron job every minute to send a plain text file to an API.
The API then does some computations, sometimes with previous metrics, to derive
system load and uptime, CPU and RAM usage, disk and network IOPS, and more. I
also learned how the Linux filesystem has evolved to provide more comprehensive
data over the years.

After spending enough time on the MVP, I switched gear to create a [landing
page][1] for the service. It's basic and will need further improvements, but
I'm satisfied with the initial result.

The challenge now is finding some early adopters to test the MVP and provide
feedback for improvement. The MVP will be free, and, if possible, will remain
free for hobbyists to help terminate forgotten cloud servers. However,
marketing is hard for devs, and I don't have a significant audience on social
media to promote the project.

So, at the end of the month, I decided to take a break from that task and
instead spend a few days creating another Ruby on Rails app allowing people to
send emails to the AIs made by OpenAI, Anthropic, Google, and Mistral instead
of using their respective web apps. These AIs helped me write the content for
the landing page, but it was a frustrating experience that is now much easier
with this new service. I named it [Goodbot.club][4], and we'll see where it
goes.

Anyway, if you manage cloud servers and are interested in trying
[CloudCheck][1] you can sign up for early access, and I'll be happy to read
your feedback.

[1]: https://cloudcheck.cc
[2]: https://stop.wasting.cloud
[3]: https://rubyonrails.org/2024/8/10/Rails-7-2-0-has-been-released
[4]: https://goodbot.club
