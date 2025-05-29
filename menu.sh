#!/bin/bash
printf "  1.Display disk usage.
       \n 2.Display system uptime. \
       \n 3.Show the top 5 memory-consuming processes. \
       \n 4.Backup a directory. \
       \n 5.Exit.\n"
printf "\n Give your input which you want from above menu:: "
read -r input
menu="$input"
case $menu in

   "Display disk usage")
    echo "Root directory usage"
    diskusage=$(df -kh | awk '{print $5}')
    echo "$diskusage"
    ;;

   "Display system uptime")
    uptime=$(uptime -p)
    echo "System is $uptime and logged in user is/are $(who)"
    ;;

    "Show the top 5 memory-consuming processes")
   #topcmd=$(top -b -o %MEM -n 1 | head -n 12)
    topcmd=$(top -b -o %CPU -n 1 | head -n 12)
    echo " Top memory/CPU usage applications are ::: $topcmd"
    ;;

    "Backup a directory")
     echo " enter the path directory"
     read -r path
     #echo "file coied to backup folder in git" "$(scp -r /mnt/c/Users/shash/Desktop/awskey /mnt/c/Users/shash/Desktop/Devops_practise/myDevOPsPractise/backup)"
     echo "file coied to backup folder in git" "$(scp -r /mnt/$path /mnt/c/Users/shash/Desktop/Devops_practise/myDevOPsPractise/backup)"
    ;;
    
    *)
    echo "inavlid input"
esac