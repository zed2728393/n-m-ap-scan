#!/bin/bash

INPUT_FILE="rustscan_results.txt"

if [[ ! -f "$INPUT_FILE" ]]; then
  echo "Input file $INPUT_FILE not found"
  exit 1
fi

while IFS= read -r line; do
  # Extract IP and port from line like: "Open 141.101.90.98:65530"
  ip_port=$(echo "$line" | awk '{print $2}')  # gets 141.101.90.98:65530
  ip=$(echo "$ip_port" | cut -d':' -f1)
  port=$(echo "$ip_port" | cut -d':' -f2)

  echo "Scanning $ip on port $port"

  # Run nmap service/version scan on that IP and port
  nmap -sV -p "$port" "$ip" -oN "nmap_scan_${ip//./_}_port${port}.txt"
done < "$INPUT_FILE"
