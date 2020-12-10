
#5. The file /etc/passwd contains info about all users. Write a program which would receive the 
#logname during execution, obtain     information about it from the file and display the       
#information on screen in some appropriate format. (Hint : use cut)
#    eg. Logname : , UID : , GID : , Default working directory : , Default working shell :


cut -d ":" -f 1,3,4,5,6,7 /etc/passwd --output-delimiter=' | '

#Output :

#[ec2-user@ip-172-31-85-227 one]$ 
#root | 0 | 0 | root | /root | /bin/bash
#bin | 1 | 1 | bin | /bin | /sbin/nologin
#daemon | 2 | 2 | daemon | /sbin | /sbin/nologin
#adm | 3 | 4 | adm | /var/adm | /sbin/nologin
#lp | 4 | 7 | lp | /var/spool/lpd | /sbin/nologin
#sync | 5 | 0 | sync | /sbin | /bin/sync
#shutdown | 6 | 0 | shutdown | /sbin | /sbin/shutdown
#halt | 7 | 0 | halt | /sbin | /sbin/halt
#mail | 8 | 12 | mail | /var/spool/mail | /sbin/nologin
#operator | 11 | 0 | operator | /root | /sbin/nologin
#games | 12 | 100 | games | /usr/games | /sbin/nologin
#ftp | 14 | 50 | FTP User | /var/ftp | /sbin/nologin
#nobody | 99 | 99 | Nobody | / | /sbin/nologin
#systemd-network | 192 | 192 | systemd Network Management | / | /sbin/nologin
#dbus | 81 | 81 | System message bus | / | /sbin/nologin
#rpc | 32 | 32 | Rpcbind Daemon | /var/lib/rpcbind | /sbin/nologin
#libstoragemgmt | 999 | 997 | daemon account for libstoragemgmt | /var/run/lsm | /sbin/nologin
#sshd | 74 | 74 | Privilege-separated SSH | /var/empty/sshd | /sbin/nologin
#rpcuser | 29 | 29 | RPC Service User | /var/lib/nfs | /sbin/nologin
#nfsnobody | 65534 | 65534 | Anonymous NFS User | /var/lib/nfs | /sbin/nologin
#ec2-instance-connect | 998 | 996 |  | /home/ec2-instance-connect | /sbin/nologin
#postfix | 89 | 89 |  | /var/spool/postfix | /sbin/nologin
#chrony | 997 | 995 |  | /var/lib/chrony | /sbin/nologin
#rngd | 996 | 994 | Random Number Generator Daemon | /var/lib/rngd | /sbin/nologin
#tcpdump | 72 | 72 |  | / | /sbin/nologin
#ec2-user | 1000 | 1000 | EC2 Default User | /home/ec2-user | /bin/bash
