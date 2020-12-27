#16. Write a shell script to display the menu driven interface :- 
#1) list all files of the current directory 
#2) print the current directory 
#3) print the date 
#4) print the users otherwise     
#display "Invalid Option".


echo "1) List all Files"
echo "2) Print Current Directory"
echo "3) Print Date"
echo "4) Print Users"

read choice

case $choice in
        1)  ls
            ;;
        2)  pwd
            ;;
        3)  echo `date +%d-%B-%Y`
            ;;
        4)  awk -F: '{ print $1}' /etc/passwd
            ;;
        *)  echo "Invalid Option"
esac

#Output:

# niravchavda@niravchavda:~/Desktop/Learning/shell$ sh 16.sh
# 1) List all Files
# 2) Print Current Directory
# 3) Print Date
# 4) Print Users
# 1
# 10.sh  15.sh  18.sh  20.sh  24.sh  27.sh  2.sh   32.sh  35.sh  38.sh  40.sh  6.sh  9.sh
# 11.sh  16.sh  19.sh  21.sh  25.sh  28.sh  30.sh  33.sh  36.sh  39.sh  4.sh   7.sh  file1.txt
# 14.sh  17.sh  1.sh   22.sh  26.sh  29.sh  31.sh  34.sh  37.sh  3.sh   5.sh   8.sh
# niravchavda@niravchavda:~/Desktop/Learning/shell$ sh 16.sh
# 1) List all Files
# 2) Print Current Directory
# 3) Print Date
# 4) Print Users
# 2
# /home/niravchavda/Desktop/Learning/shell
# niravchavda@niravchavda:~/Desktop/Learning/shell$ sh 16.sh
# 1) List all Files
# 2) Print Current Directory
# 3) Print Date
# 4) Print Users
# 3
# 09-December-2020
# niravchavda@niravchavda:~/Desktop/Learning/shell$ sh 16.sh
# 1) List all Files
# 2) Print Current Directory
# 3) Print Date
# 4) Print Users
# 4
# root
# daemon
# bin
# sys
# sync
# games
# man
# lp
# mail
# news
# uucp
# proxy
# www-data
# backup
# list
# irc
# gnats
# nobody
# systemd-network
# systemd-resolve
# systemd-timesync
# messagebus
# syslog
# _apt
# tss
# uuidd
# tcpdump
# avahi-autoipd
# usbmux
# rtkit
# dnsmasq
# cups-pk-helper
# speech-dispatcher
# avahi
# kernoops
# saned
# nm-openvpn
# hplip
# whoopsie
# colord
# geoclue
# pulse
# gnome-initial-setup
# gdm
# niravchavda
# systemd-coredump