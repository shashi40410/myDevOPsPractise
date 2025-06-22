#!/bin/bash
error=$(sudo grep -ioR "error" /var/log/*)
if [[ $? -eq 0 ]]; then
  echo "$error"
else
   "no error found"

fi