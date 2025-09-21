#!/bin/bash

rm -f nmap_scan.txt live_hosts_final.txt


sed -E 's~https?://~~' live_hosts.txt > live_hosts_final.txt


# Run nmap service/version scan on live host
sudo nmap -sV -sN -O -iL live_hosts_final.txt -oN "nmap_scan.txt"





