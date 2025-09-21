#!/bin/bash

rm -f nmap_scan.txt

# Run nmap service/version scan on live host
sudo nmap -sV -sN -O -iL live_hosts.txt -oN "nmap_scan.txt"





