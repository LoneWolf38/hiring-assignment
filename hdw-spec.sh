#!/bin/bash


echo "OS Version: $(cat /etc/redhat-release)"

echo "Kernel Version: $(uname -r)"

echo "CPU Virtual Cores/Physical Cores: $(grep "physical id" /proc/cpuinfo | sort | uniq | wc -l) / $(grep "^processor" /proc/cpuinfo | wc -l)"

echo "$(lscpu | grep "CPU MHz:")"

echo "$(lscpu | grep "Architecture")"

echo "$(egrep 'MemTotal|MemFree|MemAvailable' /proc/meminfo)"

echo "Network Bandwidth: $(vnstat -tr)"

echo "$(sudo firewall-cmd --list-ports)"

echo "$(sudo firewall-cmd --list-services)"

echo "$(lsblk -o "NAME,MAJ:MIN,RM,SIZE,RO,FSTYPE,MOUNTPOINT,UUID")"