#!/bin/bash

N=1
ls ~/Pictures/saved-pictures/4chan-fit-motivation |sort -R |tail -$N |while read file; do
    # Something involving $file, or you can leave
    # off the while to just get the filenames
    display $file 
done
