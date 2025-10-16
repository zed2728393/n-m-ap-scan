#!/bin/bash

rm -f live_hosts_final.txt

input_file="$1"

sed -E 's~https?://~~' "$input_file" > live_hosts_final.txt

# Run nmap service/version scan on live host
sudo nmap -sV -O -iL live_hosts_final.txt -oN "nmap_scan.txt"





