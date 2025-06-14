#!/bin/bash
echo "service check:"
status=$(systemctl is-active docker)
   echo $status
if [ "$status" = "active" ]; then
  echo "serice is active"
else
  
  echo "service not active"
fi