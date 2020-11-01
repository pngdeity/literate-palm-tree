#!/bin/bash

# This script opens up the Firefox tabs that I update during my nighttime routine.

# TODO


firefox $(cat /home/nathan/Documents/old-stuff/firefox-tab-list-nighttime.txt | tr '\n' ' ') &
exit
