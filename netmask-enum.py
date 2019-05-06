#!/bin/python3

from netaddr import *

targets = open('targets.txt','w')

ipMask = ["130.126.0.0/16","72.36.64.0/18","128.174.0.0/16","192.17.0.0/16","10.192.0.0/10","172.16.0.0/13","64.22.176.0/20","204.93.0.0/19","141.142.0.0/16","198.17.196.0/25","172.24.0.0/13"]
for pair in ipMask:
    print("Starting on IP range:  " + pair + "\n")
    for ip in IPNetwork(pair):
        theIP = '%s' % ip
#        print(theIP)
        targets.write(theIP + "\n")

targets.close()
