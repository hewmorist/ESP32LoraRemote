#!/bin/bash

# make it so mc exits in current dir

echo "alias mc='. /usr/lib/mc/mc-wrapper.sh'" >> ~/.bashrc
source ~/.bashrc

# restart udev so for new rules
# NOTE: Need to issue usbipd attach --wsl --<busid> from Windows powershell 

sudo service udev restart
