#!/bin/bash
NOW=$(date +"%Y-%m-%d_%H:%M:%S")
 
if [ ! -e /home/avtr/.snapshots/ ]; then
	mkdir -p /home/avtr/.snapshots/  
fi
 
cd /home/avtr/.snapshots/ 
btrfs subvolume snapshot -r / "/home/avtr/.snapshots/root_${NOW}"
btrfs subvolume snapshot -r /home "/home/avtr/.snapshots/home_${NOW}"
