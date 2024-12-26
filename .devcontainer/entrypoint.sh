#!/bin/bash

# make it so mc exits in current dir

{ echo ""; echo "alias ll='ls -la'"; } >> ~/.bashrc
source ~/.bashrc

# restart udev so for new rules
# NOTE: Need to issue usbipd attach --wsl --<busid> from Windows powershell 

sudo service udev restart