---
layout: post
title: Microchips and authorised implanter registration (for veterinarians in Victoria, Australia)
comments: true
category: Veterinary
description: Microchip legislative requirements in Victoria, Australia, going through the test for veterinarians and experimenting with a custom FDX-B reader.
image: http://tteoh.com/public/images/2016-01-20-microchips-authorised-implanter.jpg
---

One of the <a href="http://agriculture.vic.gov.au/pets/registration-legislation-and-permits/Microchipping-of-Dogs,-Cats-and-Horses">legislated requirements</a> when adopting a furry little companion into your lives is to have them implanted with a microchip. These are permanent identification devices which provide a means to recover animals that have been lost and found. In Australia, the person installing the microchip needs to be an <a href="http://agriculture.vic.gov.au/pets/registration-legislation-and-permits/Microchipping-of-Dogs,-Cats-and-Horses/microchipping-information-for-authorised-implanters">Authorised Implanter</a>, usually a veterinarian or someone working under their supervision. 

<!--break-->

Registration takes place within the state in which you intend to work. Typically, in addition to your qualifications, a course on microchipping needs to be completed before you're issued with an Authorised Implanter number. In our case, as veterinary students, we were given this as part of our curriculum, which allowed for a nice and seamless registration within the same state after graduation.

Unfortunately, this doesn't necessarily carry over to other states if you want to move. Coming down to Victoria from Queensland, I needed to complete a course in Microchip Implantation of Cats and Dogs (Course Number 21955Vic), which can be done through the <a href="http://www.ava.com.au/about-us/my-ava-group/divisions-and-branches/victoria-0">regional AVA branch</a>. This is the specific <a href="http://www.ava.com.au/sites/default/files/Microchip%20Accreditation%20Registration%20Form.pdf">form</a> you will need to initiate the process (Cost is $55, or $22 if you're registered in another state). If you live in Melbourne and have a healthy amount of paranoia about writing down credit card details on a piece of paper and faxing it through, you can also go in person to pay the fee and submit the paperwork. 

From this, you'll receive a DVD and a short take-home test to complete.

### Implementation of Microchipping Legislation Training Course Assessment Form

I received the 2-2009 revised version of the test to complete, and there were a number of what I feel were somewhat ambiguous questions. No feedback was provided on these answers so I have no way of working out which questions I got correct. Nevertheless, will go through them all, hopefully someone will point out any mistakes I may have made. 

#### Which of the following veterinarians will be able to implant microchips into dogs, cats and horses in Victoria after 1st September 2009?

(c) Any Veterinarian who is registered in Victoria and has completed a DPI approved course

#### What are the requirements for persons without veterinary qualifications to be permitted to implant microchips into cats and dogs in Victoria after December 2006?

(b) They must have an approved qualification, have completed an approved microchip course and be either employed by, or have a written agreement with a veterinarian (who is an approved implanter) to supervise them.

#### What is a prescribed permanent identification device?

(b) A microchip which complies with AS 5019-2001 and AS 5018-2001 which uniquely identifies the animal.

#### Who is ultimately responsible for ensuring that the correct type of microchip is implanted?

(c) The veterinarian, whether implanting or supervising.

#### Who is responsible to ensure the microchipping details are placed on a licensed domestic animal registry?

(c) The authorised implanter

#### Is an implanter able to implant a second microchip into a cat, dog or horse?

(c) No, not without the original microchip being removed.

NB: Generally (c). If the animal has an imported chip that cannot be read using a universal scanner, you should inform the owner and implant a prescribed ISO compliant chip. 

#### ISO Microchips

(a) Indicates technology type not manufacturer.

(b) Can only be supplied by some microchip distributors in Australia.

NB: I feel both have merit. ISO is the standards to which these microchips adhere to, which in the explanatory video was described as "Effectively another technology" to meet the needs of the 134kHz spectrum. FDX-A/B are really the technologies. 

#### Which of the following microchip code numbers meet the requirements for prescribed permanent identification devices in Victoria.

(a) 981 000 000 123 456

(b) 956 000 000 123 456

NB: Without knowing if 981 is a validly assigned microchip manufacturor numbers, it's hard to discount it as invalid. The one starting with 999 as the manufacturor code is a test chip and thus not valid. In the video a microchip starting with 956 with 15 digits was given as an example so that format should be valid. 

#### Full Duplex (FDX) means

(b) Simultaneous two-way communication between microchip and reader

#### Under Australian Standards, scanners should be able to read approved microchips

(b) At a distance of 50mm

(c) At a speed of 0.5m/sec

NB: To be able to meet scan requirements in the legislation, it is stipulated that the machine must be able to pick up a microchip from a distance no greater than 50mm and with a sweep speed of no greater than 50cm/s

#### Where should a microchip be implanted into a dog or cat?

(b) In the dorsal midline between the scapulae lying at 30-45 degree angle

#### How long does an authorised implanter have to give the information to a licensed registry?

(b) 48 hours

#### The recent changes to the Domestic Animal Legislation now makes it compulsory to microchip horses

(b) False

NB: Remains voluntary

#### Where should a microchip be implanted on a horse?

(b) Nuchal ligament on the left side of the neck, midway between the poll and wither.


### Experimenting with RFID readers

Microchips use Radio-Frequency Identification (RFID) as their underlying technology to function, with the transponder being the microchip. The power is derived from the scanner as it passes over the coil antenna, so it can stay in place passively for the lifetime of the animal. Microchips in Australia need to comply with the Australian Standards, based off bits 27–64 of the data stream as defined in the International Standards Organization (ISO) 11784) and an International Committee of Animal Recording (ICAR) issued manufacturer code number (bits 17–26), operating fully duplex at 134.2kHz. More information can be found on the <a href="http://www.ava.com.au/policy/51-electronic-identification-animals">AVA website</a> and <a href="https://en.wikipedia.org/wiki/ISO_11784_%26_11785">wikipedia</a>.

Commercially available scanners are not cheap; they're designed and marketed to frequent usage in a clinical setting. There are numerous reader modules available online, designed for proximity access card reading, but many are unsuitable because they don't operate at the correct frequency or with the correct protocols. I did, however, come across a <a href="http://www.priority1design.com.au/rfid_reader_modules.html#mrfid_reader_writer">module produced by Priority 1 Design</a>, who are also based in Melbourne, that would fit the bill, and managed to source one of the USB interface modules second hand for a very reasonable price. 

![uRFID-USB]({{ site.baseurl }}public/images/2016-01-20-microchips-authorised-implanter.jpg)

It connects directly to a USB port on your computer with a Male to Male type A USB cable, and there is an integrated usb to serial adaptor. The company provides a few pretty easy to use programs to control reading and writing, which work pretty well, but are only available for Microsoft Windows operating systems. Thankfully, theres some good documentation on the serial interface, so we can go that route with Linux as well! Lets look at what the computer sees when we plug in the device:

{% highlight ruby %}
dmesg
...
usb 1-2: new full-speed USB device number 9 using xhci_hcd
usb 1-2: New USB device found, idVendor=0403, idProduct=6001
usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
usb 1-2: Product: FT232R USB UART
usb 1-2: Manufacturer: FTDI
usb 1-2: SerialNumber: AMXT8X3S
ftdi_sio 1-2:1.0: FTDI USB Serial Device converter detected
usb 1-2: Detected FT232RL
usb 1-2: FTDI USB Serial Device converter now attached to ttyUSB0
{% endhighlight %}

Take note of where the serial device is attached (in this case /dev/ttyUSB0 - it may be different for you). We need a program able to monitor the serial port and send commands back. I used PuTTy but there are many others available. Make sure to run it with root privilages so it can access the /dev/ folder.

Start a PuTTy session and specify the correct connection type (Serial), and serial line (/dev/ttyUSB0 in this example). Leave the baud rate at 9600. Within the Terminal category, switch Local echo and Local line editing to "Force on". Then it's only a matter of passing the module over animal until a reading is returned! Commands to use to further interact with the module can be found in the [Datasheet](http://www.priority1design.com.au/rfid_reader_usb.pdf).
