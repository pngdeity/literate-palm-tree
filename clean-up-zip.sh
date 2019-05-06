#!/bin/sh

# This script processes a list of files in a directory.
# The processing is:
# Rename - Extract - Rename extracted directory - Delete zip file
# Write a bash script that has awk embedded into it

directory=${1:-"/home/nathan/Downloads"}
# for each file in the directory { 
	
column=${1:-1}
awk '{ print $'$column' }'
