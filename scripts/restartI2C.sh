#! /bin/bash

##
# Script to restart the i2c hid driver for the mouse trackpad on a HP latitude 5480. 
##

modprobe -r i2c_hid
modprobe i2c_hid
