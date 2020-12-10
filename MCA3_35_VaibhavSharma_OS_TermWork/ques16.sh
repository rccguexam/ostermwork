# 16. Write a shell script to display the menu driven interface :- 
# 1) list all files of the current directory 
# 2) print the current directory 
# 3) print the date 
# 4) print the users otherwise     
# display "Invalid Option".


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

# Output:

# [ec2-user@ip-172-31-85-227 one]$ sh 16.sh
# 1) List all Files
# 2) Print Current Directory
# 3) Print Date
# 4) Print Users
# 1

# 1
# 16.sh  cut  ls  script.sh  seven.sh  sports.dat  students.dat  xyz.txt

# [ec2-user@ip-172-31-85-227 one]$ sh 16.sh
# 1) List all Files
# 2) Print Current Directory
# 3) Print Date
# 4) Print Users

# 2
# /home/ec2-user/one

# [ec2-user@ip-172-31-85-227 one]$sh 16.sh
# 1) List all Files
# 2) Print Current Directory
# 3) Print Date
# 4) Print Users

# 3
# 09-December-2020


# [ec2-user@ip-172-31-85-227 one]$ sh 16.sh
# 1) List all Files
# 2) Print Current Directory
# 3) Print Date
# 4) Print Users
# 4
# root
# bin
# daemon
# adm
# lp
# sync
# shutdown
# halt
# mail
# operator
# games
# ftp
# nobody
# systemd-network
# dbus
# rpc
# libstoragemgmt
# sshd
# rpcuser
# nfsnobody
# ec2-instance-connect
# postfix
# chrony
# rngd
# tcpdump
# ec2-user
