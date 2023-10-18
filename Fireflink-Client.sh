#!/usr/bin/env bash


echo "Installing Display"
sudo apt-get install xvfb -y
export DISPLAY=':99.0'
Xvfb :99 -screen 0 1024x768x24 > /dev/null 2>&1 &
sudo apt install libgtk-3-0 libgtk-3-dev -y
sudo apt install libfuse2 -y
sudo apt-get update
sudo apt-get install unzip -y

echo "chrome downloading"
wget https://dl.google.com/linux/chrome/deb/pool/main/g/google-chrome-stable/google-chrome-stable_113.0.5672.126-1_amd64.deb
sudo dpkg -i google-chrome-stable_113.0.5672.126-1_amd64.deb
echo "installed chrome"

echo "Downloading Client"
curl -O  "https://testyantrademourl.s3.ap-south-1.amazonaws.com/FireFlinkClient-1.0.12.AppImage"

chmod 777 FireFlinkClient-1.0.12.AppImage 
./FireFlinkClient-1.0.12.AppImage  > /dev/null 2>&1 &


echo "Fireflink client successfully installed"

