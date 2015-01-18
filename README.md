# XigPi

### Introduction from the original authors:

The XBee Internet Gateway ("XIG") is an application written for Digi's ConnectPort series of XBee-to-IP gateways. The XBee Internet Gateway gives any device the ability to connect seamlessly to the Internet by mirroring the interactions humans have with web browsers. Any device with an XBee radio can send a web URL to the XIG and receive back the contents of that web page. All the tricky technical aspects of web connections are all handled for you behind the scenes.

This simple service gives your prototype or device a simple yet completely flexible pathway to any web service that you can imagine, including posting sensor values, scraping Facebook or commanding your robotic kitten army.

XIG offeres a myriad of other interesting and useful communications services to your XBee network. For complete documentation and setup instructions please visit:

http://code.google.com/p/xig/

See also:

* http://code.google.com/p/xig/wiki/UserDocumentation
* http://faludi.com/xig
* http://www.digi.com/products/wireless-routers-gateways/gateways/

XIG is brought to you by an open-source team by makers Robert Faludi, Jordan Husney and Ted Hayes with valuable support from a community of commercial and educational users.

### My XigPI Updates

I've been working on a home automation project at [LMNT](http://lmnt.co) which uses XBees as the backbone for network communication, initially controlling them using a Connectport X2 and the Xig software. It requires the X2 register with http://www.etherios.com/, and then you would use their REST API endpoint to communicate with your gateway. The Ethrerios service makes it super easy to get up and running, develop and debug, and is highly recommended!  

For my use case, I didn't want to rely on Etherios, nor did I eventually want to pay them for commercial use.

To that end, I've modified slightly the original Xig software in the following ways:
* Disable SSL checking
* Disable registration with Etherios
* Disabled EDP Keepalive Check
* Set local port via config file
* Added some debug logging

I also wanted to be able to use this behind a firewall, so I implemented a reverse SSH tunnel in which I pipe all of my API commands through from a remote server. This both encrypts communication, and provides a reliable 'phone home' capability.

This is a fork of ***XIG v1.5.1b19***, however, there is one more update that adds support for dc_data function and updates version to official 1.5.1 Release. I may see what it takes to merge those changes at some point in the future. 
