#!/bin/bash

# This script opens up programs that I check on a daily basis, all at the same time.

# TODO
# Add your script that updates your config files GitHub repo?
# Have the terminal window close automatically after the script has spawned all necessary processes
# automatically move certain apps to different workspaces in i3

firefox $(cat /home/nathan/Documents/old-stuff/firefox-tab-list.txt | tr '\n' ' ') &
thunderbird &
signal-desktop &
delta-app &
teams & 
# kill -9 $PPID #closes bash after completing script
