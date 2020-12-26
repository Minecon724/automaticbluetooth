# AutomaticBluetooth

## tf is dat?
*AutomaticBluetooth* is a script written in [Python](https://www.python.org) for Raspberry Pi.
How does it work:
- On device disconnect:
- [x] Make discoverable
- On device connect:
- [x] Stop discoverable

# Tootorals

## Installation
```
bash <(curl -s https://raw.githubusercontent.com/Minecon724/automaticbluetooth/master/setup.sh)
```

## Removal
```
sudo rm /etc/systemd/system/automaticbluetooth.service
sudo rm -rf /home/automaticbluetooth
``

