#!/bin/bash

# This script opens up programs that I check during my dinner routine.

# TODO
# Add your script that updates your config files GitHub repo?
# Have the terminal window close automatically after the script has spawned all necessary processes
# Have the script open up and resize a terminal window, but only if using an external monitor

firefox $(cat /home/nathan/Documents/old-stuff/firefox-tab-list-dinner-routine.txt | tr '\n' ' ') &
# kill -9 $PPID #closes bash after completing script
