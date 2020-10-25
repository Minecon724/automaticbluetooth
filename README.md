# AutomaticBluetooth

## What is it?
*AutomaticBluetooth* is a script written in [Python](https://www.python.org) for Raspberry Pi.
It works like this:
- On device disconnect:
- [x] Make Discoverable
- On device connect:
- [x] Stop Discoverable

# Seems to be working! How to download it?
Complete the following procedures:

## If you want to install it,
If you want to install this, just type the following command in any location:
- `bash <(curl -s https://raw.githubusercontent.com/Minecon724/automaticbluetooth/master/setup.sh)`

## Uninstall
But if you want to delete, type these commands (**WARNING! BE CAREFUL**):
- `sudo rm /etc/systemd/system/automaticbluetooth.service`
- `sudo rm -rf /home/automaticbluetooth`

