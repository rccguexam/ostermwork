
#5. The file /etc/passwd contains info about all users. Write a program which would receive the 
#logname during execution, obtain     information about it from the file and display the       
#information on screen in some appropriate format. (Hint : use cut)
#    eg. Logname : , UID : , GID : , Default working directory : , Default working shell :


filepath="/etc/passwd"

cut -d ":" -f 1,3,4,5,6,7 $filepath --output-delimiter=' | '

#Output
#root | 0 | 0 | root | /root | /bin/bash
#daemon | 1 | 1 | daemon | /usr/sbin | /usr/sbin/nologin
#bin | 2 | 2 | bin | /bin | /usr/sbin/nologin
#sys | 3 | 3 | sys | /dev | /usr/sbin/nologin
#sync | 4 | 65534 | sync | /bin | /bin/sync
#games | 5 | 60 | games | /usr/games | /usr/sbin/nologin
#man | 6 | 12 | man | /var/cache/man | /usr/sbin/nologin
#lp | 7 | 7 | lp | /var/spool/lpd | /usr/sbin/nologin
#mail | 8 | 8 | mail | /var/mail | /usr/sbin/nologin
#news | 9 | 9 | news | /var/spool/news | /usr/sbin/nologin
#uucp | 10 | 10 | uucp | /var/spool/uucp | /usr/sbin/nologinv
#proxy | 13 | 13 | proxy | /bin | /usr/sbin/nologin
#www-data | 33 | 33 | www-data | /var/www | /usr/sbin/nologin
#backup | 34 | 34 | backup | /var/backups | /usr/sbin/nologin
#list | 38 | 38 | Mailing List Manager | /var/list | /usr/sbin/nologin
#irc | 39 | 39 | ircd | /var/run/ircd | /usr/sbin/nologin
#gnats | 41 | 41 | Gnats Bug-Reporting System (admin) | /var/lib/gnats | /usr/sbin/nologin
#nobody | 65534 | 65534 | nobody | /nonexistent | /usr/sbin/nologin
#systemd-network | 100 | 102 | systemd Network Management,,, | /run/systemd | /usr/sbin/nologin
#systemd-resolve | 101 | 103 | systemd Resolver,,, | /run/systemd | /usr/sbin/nologin
#systemd-timesync | 102 | 104 | systemd Time Synchronization,,, | /run/systemd | /usr/sbin/nologin
#messagebus | 103 | 106 |  | /nonexistent | /usr/sbin/nologin
#syslog | 104 | 110 |  | /home/syslog | /usr/sbin/nologin
#_apt | 105 | 65534 |  | /nonexistent | /usr/sbin/nologin
#tss | 106 | 111 | TPM software stack,,, | /var/lib/tpm | /bin/false
#uuidd | 107 | 114 |  | /run/uuidd | /usr/sbin/nologin
#tcpdump | 108 | 115 |  | /nonexistent | /usr/sbin/nologin
#avahi-autoipd | 109 | 116 | Avahi autoip daemon,,, | /var/lib/avahi-autoipd | /usr/sbin/nologin
#usbmux | 110 | 46 | usbmux daemon,,, | /var/lib/usbmux | /usr/sbin/nologin
#rtkit | 111 | 117 | RealtimeKit,,, | /proc | /usr/sbin/nologin
#dnsmasq | 112 | 65534 | dnsmasq,,, | /var/lib/misc | /usr/sbin/nologin
#cups-pk-helper | 113 | 120 | user for cups-pk-helper service,,, | /home/cups-pk-helper | /usr/sbin/nologin
#speech-dispatcher | 114 | 29 | Speech Dispatcher,,, | /run/speech-dispatcher | /bin/false
#avahi | 115 | 121 | Avahi mDNS daemon,,, | /var/run/avahi-daemon | /usr/sbin/nologin
#kernoops | 116 | 65534 | Kernel Oops Tracking Daemon,,, | / | /usr/sbin/nologin
#saned | 117 | 123 |  | /var/lib/saned | /usr/sbin/nologin
#nm-openvpn | 118 | 124 | NetworkManager OpenVPN,,, | /var/lib/openvpn/chroot | /usr/sbin/nologin
#hplip | 119 | 7 | HPLIP system user,,, | /run/hplip | /bin/false
#whoopsie | 120 | 125 |  | /nonexistent | /bin/false
#colord | 121 | 126 | colord colour management daemon,,, | /var/lib/colord | /usr/sbin/nologin
#geoclue | 122 | 127 |  | /var/lib/geoclue | /usr/sbin/nologin
#pulse | 123 | 128 | PulseAudio daemon,,, | /var/run/pulse | /usr/sbin/nologin
#gnome-initial-setup | 124 | 65534 |  | /run/gnome-initial-setup/ | /bin/false
#gdm | 125 | 130 | Gnome Display Manager | /var/lib/gdm3 | /bin/false
#shivangi27 | 1000 | 1000 | shivangi,,, | /home/shivangi27 | /bin/bash
#systemd-coredump | 999 | 999 | systemd Core Dumper | / | /usr/sbin/nologin
#vboxadd | 998 | 1 |  | /var/run/vboxadd | /bin/false
