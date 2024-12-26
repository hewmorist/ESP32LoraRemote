#!/bin/bash

# make it so mc exits in current dir


source home/vscode/.bashrc

# restart udev so for new rules
# NOTE: Need to issue usbipd attach --wsl --<busid> from Windows powershell 

sudo service udev restart
