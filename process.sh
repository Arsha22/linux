#!/bin/bash
if [ $# -ne 1 ]; then
  echo "Please provide a process name or ID as an argument."
  exit 1
fi
process_details=$(ps -p "$1" -o pid,ppid,cmd,%cpu,%mem,stime,etime)
if [ -z "$process_details" ]; then
  echo "No process found with the given name or ID: $1"
  exit 1
fi
echo "Process details:"
echo "$process_details"
