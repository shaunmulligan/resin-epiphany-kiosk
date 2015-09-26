## Epiphany Kiosk On Resin.io

This is a basic example of how to launch a basic Web page on the HDMI screen of a device. It uses a Epiphany Browser and matchbox, a lightweight window manager.

This demo should run on RPI 1 and 2, the Odroid XU3/4 and the Beaglebone Black.

Currently not working.

* Can not seem to hide the top menu bar
* Youtube videos do not load.

### SSH into the running container.

This starts an openssh server on port 22. You can then ssh into the running container
using `ssh root@<IP_ADDRESS>` the default password for `root` is `resin`.

At after pushing you may encounter and re-sshing back into the device you may encounter this error message as the host key changes when an update occurs on the device.


```sh
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@    WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED!     @
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
IT IS POSSIBLE THAT SOMEONE IS DOING SOMETHING NASTY!
Someone could be eavesdropping on you right now (man-in-the-middle attack)!
It is also possible that a host key has just been changed.
```

To get around this remove the key.

```sh
$ ssh-keygen -R <YOUR-PI'S-IP>
```

It will then work as expected

```sh
$ @root<YOUR-PI'S-IP>
```
