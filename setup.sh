#!/bin/bash
cd /home
echo Downloading SpeakerPi and required packages...
sudo git clone https://github.com/Minecon724/speakerpi
sudo apt-get install pulseaudio-module-bluetooth bluez-tools
echo Installing...
sudo mv /speakerpi/speakerpi.service /lib/systemd/system/speakerpi.service
sudo chmod 644 /lib/systemd/system/speakerpi.service
sudo gpasswd -a $(whoami) pulse
sudo gpasswd -a $(whoami) lp
sudo gpasswd -a $(whoami) audio
sudo gpasswd -a pulse lp
sudo gpasswd -a pulse audio
sudo hciconfig hci0 up
sudo hciconfig hci0 class 0x200420
sudo sh -c "echo 'extra-arguments = --exit-idle-time=-1 --log-target=syslog' >> /etc/pulse/client.conf"
echo Done. Reboot may be needed.
