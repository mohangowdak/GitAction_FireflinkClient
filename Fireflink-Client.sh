#!/usr/bin/env bash


echo "Installing Display"
sudo apt-get install xvfb -y
export DISPLAY=':99.0'
Xvfb :99 -screen 0 1024x768x24 > /dev/null 2>&1 &
sudo apt install libgtk-3-0 libgtk-3-dev -y
sudo apt install libfuse2 -y

echo "Downloading Client"
curl -O  "https://testyantrademourl.s3.ap-south-1.amazonaws.com/FireFlinkClient-1.0.12.AppImage"

chmod 777 FireFlinkClient-1.0.12.AppImage
./FireFlinkClient-1.0.12.AppImage


echo "Fireflink client successfully installed"

