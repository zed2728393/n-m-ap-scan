#!/bin/bash

 
# Run nmap service/version scan on live host
nmap -sV -sN -O -iL live_hosts.txt -oN "nmap_scan.txt"





