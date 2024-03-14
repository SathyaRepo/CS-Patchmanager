#!/bin/bash

sudo apt-get install libopenscap8
wget https://security-metadata.canonical.com/oval/com.ubuntu.$(lsb_release -cs).usn.oval.xml.bz2
sudo apt-get install bunzip2
bunzip2 com.ubuntu.$(lsb_release -cs).usn.oval.xml.bz2
oscap oval eval --report report.html com.ubuntu.$(lsb_release -cs).usn.oval.xml
