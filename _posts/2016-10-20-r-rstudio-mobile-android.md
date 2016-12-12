---
layout: post
title: Running R and RStudio from an Android mobile phone or tablet
comments: true
category: Technology
description: Going through the process of compiling the web-accessible server version of RStudio locally onto an Android mobile phone, to use on the Run! 
image: http://tteoh.com/public/images/2016-10-20-rstudio-android.png
---

![RStudio on Android]({{ site.baseurl }}public/images/2016-10-20-rstudio-android.png)

<a href="http://www.r-project.org">R</a> is a popular statistical computing environment based around a readily interpretable language, with the additional benefit of being free. There is a bit of a learning curve to it, but with plenty of resources available on the internet and with an appropriate development platform/editor, refining your analysis with it is relatively unproblematic. One commonly used platform is <a href="https://www.rstudio.com/products/rstudio/">RStudio</a>, featuring a number of features including syntax highlighting and code completion. 

Obtaining RStudio is relatively painless; the software is open source and there are binaries available for numerous systems (Windows, Mac, Linux). There is even a <a href="https://www.rstudio.com/prodcts/rstudio/download-server/">version allowing you to run it from a server</a>. But what of mobile devices? After all, I sometimes don't have my computer with me, such as when I'm at conferences or seminars, and internet access is not guaranteed at all times. In this post, I'll go through the process of compiling the web-accessible server version of RStudio locally onto an Android mobile phone, to use on the Run! 


<!--break-->

# Preface

The process of getting this set up involves some tinkering with the software of your device, and can lead to loss of data or potentially rendering it unusable. As always, caution is advised; ensure your data (files, photos, videos) is safely stored outside of the device you're going to be playing with. It might be a good idea to only try this process on a spare device such as an old phone or tablet. 


# Getting started

You'll need a rooted device running Android. It can be a little bit of an involved process to get set up, and would vary depending on what device you're using as well as if you have access to a computer. Thankfully there are a number of resources on the internet to guide you through the process <a href="http://www.androidcentral.com/root">1</a> <a href="http://trendblog.net/guide-to-android-rooting-custom-roms-apps/">2</a> <a href="http://www.digitaltrends.com/mobile/how-to-root-android/">3</a> <a href="http://www.androidauthority.com/root-android-277350/">4</a> <a href="https://www.androidpit.com/root-android">5</a>. 

I'd recommend having at least 4Gb of space available, whether it be on the device's internal storage or if available (SD expansion slot), expandable storage. In my case, I used a Moto X (2013) developer edition, flashed with a pre-rooted <a href="http://forum.xda-developers.com/moto-x/development/rom-cyanogenmod-13-moto-x-t3313427">nightly image of CyanogenMod 13</a>. For at least the installation and compilation steps, I'd recommend having ready access to a power source and to set your device to a performance mode (turning power-save features off) if applicable. 


# Installing Debian

<a href="https://www.debian.org/">Debian</a> is a popular Linux-based operating system that is known for it's reliability, and is commonly used on servers and personal computers. There are <a href="https://www.debian.org/ports/arm/">ports</a> of Debian available for systems running an ARM architechture, on which Android devices commonly run. 

There are again a number of different options for how to get the distribution set up on your device. I've previously used an Android app named <a href="https://play.google.com/store/apps/details?id=ru.meefik.linuxdeploy&hl=en">Linux Deploy</a> also available through a non-Play Store link <a href="https://github.com/meefik/linuxdeploy">here</a>. It needs a compatible <a href="https://play.google.com/store/apps/details?id=ru.meefik.busybox">BusyBox</a> installation to provide command line tools to operate. 

Once installed, follow the prompts to set up your Linux container. I'd recommend specififying a minimum of 4Gb of space (approximately the largest amount you can on the Android FAT32 system). As we are installing RStudio-server, you will only really need a command line interface to connect to, so can you can uncheck the graphical environment. The SSH server is important to maintain access to the machine, whether it be directly from your device or through another computer. My settings can be found <a href="{{ site.baseurl }}public/images/2016-10-20-linux-deploy-settings.png">here</a>. 

Once done configuring, let Linux Deploy set it up for you. This should take 30 minutes to an hour, and completion is indicated with a "`<< install`". When started from a stopped state, the status should look like such:

![Linux Deploy started]({{ site.baseurl }}public/images/2016-10-20-linux-deploy-start.png)


## Housekeeping

You can access your freshly minted Debian install with the help of an SSH client, whether it be from another computer on your network or from the Android device itself. Typically I use my personal computer, because typing is easier, but in a pinch an Android SSH client that I've used before is <a href="https://play.google.com/store/apps/details?id=com.sonelli.juicessh&hl=en">JuiceSSH</a>, which works well. 

If connecting from a computer on the same network, you'll need the Android device's network address. Linux Deploy helpfully lists this when open. I'll denote it as X below, which you can change as you see fit. 

{% highlight shell %}
ssh 192.168.1.X
{% endhighlight %}

Login with your account details (set up when you configure your container, with the default password of `changeme`). Once in, the password needs to be changed first up. In Debian, you can just use:

{% highlight shell %}
passwd
{% endhighlight %}

Ensure your system is up to date (it probably is).

{% highlight shell %}
sudo apt-get update
sudo apt-get dist-upgrade
{% endhighlight %}

Some useful tools for later can be installed at this point as well. `screen` is a utility that allows you to run an interactive virtual terminal. Useful especially if you're connecting from another computer as it will stay intact even if you happen to disconnect from your Android device. `openjdk-7-jdk` is a set of java development tools, and `git` is a distributed version control system. 

{% highlight shell %}
sudo apt-get install screen openjdk-7-jdk git
{% endhighlight %}


# Compiling RStudio server

I've uploaded my modified shell script to a <a href="https://github.com/thomasteoh/ARM-rstudio-server">ARM-rstudio-server GitHub repository</a>, based heavily off work for chromebooks done by <a href="https://github.com/dashaub/ARM-RStudio">dashaub</a> and <a href="https://github.com/jrowen/ARM-rstudio-server">jrowen</a>. You're free to inspect the code, and pull requests are most welcome. Running the script is a simple matter of:

{% highlight shell %}
screen
wget https://raw.githubusercontent.com/thomasteoh/ARM-rstudio-server/master/build_rstudio.sh
sudo bash build_rstudio.sh
{% endhighlight %}

This will take multiple hours to complete; expect over 10 hours. If you leave it overnight it should be ready the next day depending on your Android device hardware. It can be quite computationally demanding on your device as well, so responsiveness will be poor during the compilation. If possible, prevent the device from sleeping (performance settings or locking the screen and wifi on) and the device should be powered. 

{% highlight shell %}
sudo rstudio-server start
{% endhighlight %}


# Accessing RStudio

You can access your installed RStudio server from any browser on your Android device, at the address `127.0.0.1:8787`. Alternatively you can access it from a computer on the same network at port `8787`. The username and password are identical to those of your Debian credentials. Functionally it is very much similar to a desktop installation, with the exception of PDF output in R markdown documents which doesn't seem to work with the available version of `pandoc`. 

![RStudio Server login]({{ site.baseurl }}public/images/2016-10-20-rstudio-server-login.png)
![RStudio Server running on Android]({{ site.baseurl }}public/images/2016-10-20-rstudio-server-running.png)

From there, it's just a matter of installing your favourite packages and accessing your code. For ease of access, you can bookmark the address and pin a shortcut to it to your home screen.


