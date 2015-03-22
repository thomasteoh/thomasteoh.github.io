---
layout: post
title: Eduroam and UniWireless configuration settings for Linux at the University of Melbourne
comments: true
category: technology
---

The University of Melbourne participates in the <a href="http://www.eduroam.edu.au/">eduroam</a> system, a location independant wireless network. University students and staff are able to connect and securely authenticate to this network wherever there is participating wireless infrastructure (such as at other higher education institutions).Alongside this, on campus an internal wireless network, UniWireless, also operates. 

Both function well enough to allow students and staff to connect to the internet. However, configuration settings are somewhat difficult to come by, especially if you want to set it up manually before visiting other universities. This document will cover the settings I use in network-manager to connect to each network on Xubuntu, an Ubuntu based Linux distro 

<!--break-->

## Eduroam

As eduroam appears to be present wherever a UniWireless access point is, it makes sense to at least configure this one, even if you only plan to use it on campus. An added benefit is that it will just work whenever you're visiting another university or university affiliated places, which turns out for me to be surprisingly often. I've managed to get up and running at such places as:

- Hospitals
- Theatres
- Conferences
- Election polling venues

### Settings

![Eduroam configuration settings]({{ site.imgurl }}2015-03-10-eduroam-settings.jpg)

- SSID: eduroam
- Mode: infrastructure
- Security: WPA & WPA2 Enterprise
- Authentication: Protected EAP (PEAP)
- Anonymous identity: (leave blank)
- CA certificate: (None)
- PEAP version: Automatic
- Inner authentication: MSCHAPv2
- Username: (unimelb username)@student.unimelb.edu.au or (unimelb staff username)@unimelb.edu.au
- Password: (unimelb password)

## UniWireless

On campus, I've found occasionally that the wireless reception may favour one wireless network or the other. In the case where you might find yourself in a position where a UniWireless connection is ideal, try these settings

### Settings

- SSID: UniWireless
- Mode: infrastructure
- Security: WPA & WPA2 Enterprise
- Authentication: Protected EAP (PEAP)
- Anonymous identity: (leave blank)
- CA certificate: (None)
- PEAP version: Automatic
- Inner authentication: MSCHAPv2
- Username: (unimelb username) or (unimelb staff username)
- Password: (unimelb password)

* It is important to note that the full email address is not required for the username when connecting to the UniWireless network on campus. 

## Connecting to the VPN

If you ever find yourself in need of connecting to electronic resources within the University of Melbourne network, while outside of the network, you can connect to the University of Melbourne VPN. For Windows or Mac computers, a Cisco AnyConnect Secure Mobility Client is available from the [relevant ITS page](https://its.unimelb.edu.au/help/networks-access/networks-internet/vpn). For Linux users, openconnect works well for this purpose.

Install openconnect through Ubuntu Software Centre or apt-get:

- sudo apt-get update
- sudo apt-get install openconnect

### Settings

- Gateway: remote.unimelb.edu.au/student
- CA Certificate: (None)
- User Certificate: (None)
- Private Key: (None)
- Method: Automatic (VPN)

When you connect, you will be prompted for your username and password. Use the same credentials as you would for the UniWireless wireless network (ie. username sans (without) @student.unimelb.edu.au or @unimelb.edu.au)