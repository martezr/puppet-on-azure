#!/bin/bash
sudo yum update -y
sudo /usr/sbin/waagent -force -deprovision+user && export HISTSIZE=0 && sync