
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


#OUTPUT
#shivangi27@shivangi:~/mca$ sh oddeven.sh
#1) List all Files
#2) Print Current Directory
#3) Print Date
#4) Print Users
#1
#circlePerimiter.sh  dir2  f1	file4	     l1			 opfile      xaa
#data.dat	    dir3  f3	grosspay.sh  LargestSmallest.sh  t1
#dir		    done  file	head	     oddeven.sh		 typescript
#shivangi27@shivangi:~/mca$ sh oddeven.sh
#1) List all Files
#2) Print Current Directory
#3) Print Date
#4) Print Users
#2
#/home/shivangi27/mca
#shivangi27@shivangi:~/mca$ sh oddeven.sh
#1) List all Files
#2) Print Current Directory
#3) Print Date
#4) Print Users
#3
#09-December-2020
#shivangi27@shivangi:~/mca$ sh oddeven.sh
#1) List all Files
#2) Print Current Directory
#3) Print Date
#4) Print Users
#4
#root
#daemon
#bin
#sys
#sync
#games
#man
#lp
#mail
#news
#uucp
#proxy
#www-data
#backup
#list
#irc
#gnats
#nobody
#systemd-network
#systemd-resolve
#systemd-timesync
#messagebus
#syslog
#_apt
#tss
#uuidd
#tcpdump
#avahi-autoipd
#usbmux
#rtkit
#dnsmasq
#cups-pk-helper
#speech-dispatcher
#avahi
#kernoops
#saned
#nm-openvpn
#hplip
#whoopsie
#colord
#geoclue
#pulse
#gnome-initial-setup
#gdm
#shivangi27
#systemd-coredump
#vboxadd


