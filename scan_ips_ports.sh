#!/bin/bash

rm -f live_hosts_final.txt

input_file="$1"
file_number="$2"

sed -E 's~https?://~~' "$input_file" > live_hosts_final.txt

# Run nmap service/version scan on live host
sudo nmap -sV -sN -O -iL live_hosts_final.txt -oN "nmap_scan_$2.txt"





