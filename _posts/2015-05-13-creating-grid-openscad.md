---
layout: post
title: Create a grid or fenestrated surface in OpenSCAD
comments: true
category: Technology
---

<a href="http://www.openscad.org">OpenSCAD</a> is a popular tool to design 3D models using a powerful yet easy-to-learn scripting interface. This is different to some other programs that allow you to shape a model more directly. Rather, this approach may have benefits in allowing you to specify measurements precisely, and allows for easy reproducibility.

I've been playing around with it recently for some research related projects, and I've found that it is relatively easy on system resources, running well on my low end notebook computer. Today I'll be outlining how to generate a basic modular grid/fenestrated surface using a few lines of code. 

<!--break-->

### Setting things up

We'll define three variables first up, making up the size of the surface that we will be later be poking windows in. This is completely up to you; for this example I'll use the following:

{% highlight ruby %}
x = 100;
y = 100;
z = 1;
{% endhighlight %}

### Defining the windows

Next is to define the number of holes on each axis, and the relative size of the holes. Again you can change these variables as you like, but for now we'll be using:

{% highlight ruby %}
fen_x = 15; // fenestrations on x axis
fen_y = 15; // fenestrations on y axis
fen_size = 5; // size of fenestrations as a % of total axis size
{% endhighlight %}

### Calculating some sizes

Using the two sets of variables that we defined earlier, we can work out some sizes - the window size and the amount of space we can allow for between windows and around edges:

{% highlight ruby %}
// calculate fenestration size
  fen_size_x = fen_size * x / 100;
  fen_size_y = fen_size * y / 100;

// calculate space remaining and then divide by number of windows needed + 1 to get the desired size of the struts
  strut_x = (x - fen_x * fen_size_x) / (fen_x + 1); 
  strut_y = (y - fen_y * fen_size_y) / (fen_y + 1);
{% endhighlight %}

### Crunching the numbers 

Finally, we can put it all together. In essence, what we're doing is taking boxes away from our surface. So to do this, we can iterate over both the x and y axis the number of times we want the boxes to appear, distributing the next one over so that we get even spacing:

{% highlight ruby %}
// take away windows from fenestrated surface
  difference() { 
    cube(size=[x, y, z]); // fenestrated surface
    for (i = [0:fen_x - 1]) {
      translate([i * (fen_size_x + strut_x) + strut_x, 0, 0])
      for (i = [0:fen_y - 1]) {
        translate([0, i * (fen_size_y + strut_y) + strut_x, -1]) 
        cube([fen_size_x, fen_size_y, z+2]); // the fenestrations have to start a bit lower and be a bit taller, so that we don't get 0 sized objects
      }
    }
  }
{% endhighlight %}

The end product should look something like this:

![Grid render]({{ site.baseurl }}public/downloads/grid-openscad.png)

[Here is the .scad file]({{ site.baseurl }}public/downloads/grid.scad) if you want to download and have a play with it