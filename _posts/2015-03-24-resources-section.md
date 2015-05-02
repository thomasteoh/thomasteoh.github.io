---
layout: post
title: Using data to organise and generate page assets and resources
comments: true
category: technology
---

Heaps of changes in this update; I've recently discovered the [_data feature](http://jekyllrb.com/docs/datafiles/) of [jekyll](http://www.jekyllrb.com), and have put this to use by updating the related pages and archive sections. This way any updates can be done via data files and layout changes will propagate automatically throughout all entries without my having to change every single one.

<!--break-->

I've also added a [Resources section]({{ site.baseurl }}resources) for any reference material I might happen to have the chance to collect. As much of my life is currently taken up by research, much will likely be related to veterinary science or parasitology. Not that thats a bad thing of course (who isn't into pictures of bugs!)

To create an easily managed system, I based my implementation on an image gallery [here](http://christianspecht.de/2014/03/08/generating-an-image-gallery-with-jekyll-and-lightbox2/). While there are some things I don't need, such as fancy lightbox scripts, the usage of data files is very suitable because of how extensible they are. 

Edit (2015-03-27) - Modified it a bit to be able to include multiple images under each subheading. Also went through and reorganised many of the file names for the original pictures to a more consistent system, just in case I will need it in this format down the track!