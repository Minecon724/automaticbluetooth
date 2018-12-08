# AutomaticBluetooth

## What is it?
*AutomaticBluetooth* is a script written in [Python](https://www.python.org).
It works like this:
- On device connect:
- [x] Make Discoverable
- On device disconnect:
- [x] Stop Discoverable

# Seems to be working! How to download it?
Complete the following procedures:

## Install
Just type the following command in any location:
- `bash <(curl -s https://raw.githubusercontent.com/Minecon724/automaticbluetooth/master/setup.sh)`

## Uninstall
Type the commands (**WARNING! BE CAREFUL**):
- `sudo rm /etc/systemd/system/automaticbluetooth.service`
- `sudo rm -rf /home/automaticbluetooth
