#!/bin/bash
sudo apt update
sudo apt upgrade #Updates your system
sudo dpkg --add-architecture i386 #adds 32bit support
sudo apt install steam #Installs Steam
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main' -y #Set up wine
sudo add-apt-repository ppa:lutris-team/lutris -y #Install Lutris
sudo apt-get install lutris -y
sudo apt-get install --install-recommends winehq-staging -y
sudo apt-get install libgnutls30:i386 libldap-2.4-2:i386 libgpg-error0:i386 libxml2:i386 libasound2-plugins:i386 libsdl2-2.0-0:i386 libfreetype6:i386 libdbus-1-3:i386 libsqlite3-0:i386 -y
sudo apt install pip
sudo apt install meson libsystemd-dev pkg-config ninja-build git libdbus-1-dev libinih-dev dbus-user-session -y
git clone https://github.com/FeralInteractive/gamemode.git
cd gamemode
git checkout 1.5.1 
./bootstrap.sh
pip install protonup
echo "export PATH=$PATH:~/.local/bin" >> .bashrc
source .bashrc
protonup
#IDK Why but I have to compile noisetourch (good for noise suppression)
sudo apt install golang-go -y
git clone https://github.com/lawl/NoiseTorch
cd NoiseTorch
make
#The program is in /home/rameez/NoiseTorch/bin/
#How to install graphics drivers
xdg-open https://github.com/lutris/docs/blob/master/InstallingDrivers.md
