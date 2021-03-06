#!/bin/bash
cd /home
echo Downloading AutomaticBluetooth...
sudo git clone https://github.com/Minecon724/automaticbluetooth
sudo pip3 install pexpect
echo Installing...
sudo mv /home/automaticbluetooth/automaticbluetooth.service /etc/systemd/system/
sudo chmod 644 /etc/systemd/system/automaticbluetooth.service
sudo systemctl enable automaticbluetooth.service
echo Done.
