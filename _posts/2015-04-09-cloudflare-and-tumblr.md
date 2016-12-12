---
layout: post
title: Is your CloudFlare DNS not working with tumblr?
comments: true
category: Technology
description: Troubleshooting why using CloudFlare doesn't seem to be compatible with tumblr pages. In short, you need to disable the traffic acceleration services within CloudFlare. 
---

I'd been thinking that there was something wrong with my [CloudFlare](http://www.cloudflare.com) DNS settings, which made them not work when setting a domain record for [tumblr](http://www.tumblr.com). Turns out, theres a quirky interaction thats stopping it from functioning when a domain is managed "On CloudFlare" (through their traffic acceleration services). 

<!--break-->

Setting up your domain, and associated domain records within CloudFlare, is usually pretty straightforwards: enter the type of record, name and where it points to. With CloudFlare's DNS management services however, you have an option of directing traffic through CloudFlare's network, denoted by this symbol:

![CloudFlare cloud](http://i.imgur.com/erqaK4S.png)

This has a number of benefits, including taking advantage of their content distribution network (CDN), caching (saving some of your resources), a bit of security from malicious attacks, and the option of integrating apps into your webpages using a few clicks. 

The problem, apparently, lies with [tumblr blocking this system](https://support.cloudflare.com/hc/en-us/articles/200168566-How-do-I-add-a-Tumblr-custom-domain-). Theres no message when setting your "Custom domain" within tumblr account settings, only that the record hadn't been set up correctly, so I originally had the impression that CloudFlare's DNS was not propagating for some reason. 

Fixing it was quick and easy. While tumblr blocks the cloud CDN functionality of CloudFlare, you can still use its plain DNS services to point to whatever you need to.

## 1) Set your record within CloudFlare

If you want to point your domain at www.example.com to tumblr, you are setting a "two level" domain. 

- Set an <b>A record</b>
- Name should be your domain. Eg. example.com
- Value should <b>point to 66.6.44.4</b>
- Leave TTL on automatic
- Ensure the cloud symbol is <b>grey</b>

If you want to point your subdomain at blog.example.com or blog.more.example.com to tumblr, are setting a "three or more level" domain. 

- Set a <b>CNAME record</b>
- Name should be your required subdomain. Eg. blog or blog.example.com
- Value should <b>point to domains.tumblr.com</b>
- Leave TTL on automatic
- Ensure the cloud symbol is <b>grey</b>

## 2) Set your custom tumblr blog url

After you've finished setting your records within CloudFlare, you can set your custom domain within tumblr. Note that while its usually pretty fast, it could take a while for the DNS settings to propagate.

- Navigate to your [Account Settings section](https://www.tumblr.com/settings)
- (If you manage multiple blogs) Select the correct blog on the right
- Next to Username, click the little pencil to edit
- Set your blog to "Use a custom domain"
- Input your desired custom domain that you set for above
- Hit "Test domain" to make sure everything worked

If it says "It's good!" it has worked! Click Save to finish and go check out your tumblr blog on your custom domain!
