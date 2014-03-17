#!/bin/sh

IDVENDOR=`lsusb | awk '/Qualcomm/ {print $6}' | awk -F":" '{print $1}'`
IDPROD=`lsusb | awk '/Qualcomm/ {print $6}' | awk -F":" '{print $2}'`

echo SUBSYSTEM=="usb", ATTR{idVendor}=="$IDVENDOR", ATTR{idProduct}=="$IDPROD", MODE="0666", GROUP="plugdev" > /etc/udev/rules.d/51-android.rules
