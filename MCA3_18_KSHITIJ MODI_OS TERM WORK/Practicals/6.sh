#6. The script will receive the filename or filename with its full path, the script should 
#obtain information about this file as given by "ls -l" and display it in proper format.
#    eg. Filename : , File access permissions : , Number of links : , Owner of the file : , 
#Group to which belongs : Size of file : , File modification date : , File modification time :

[ec2-user@ip-172-31-36-100 ~]$
ll|awk '{print $1 "|" $3 "|" $4 "|"  $5 "|" $6,$7 "|" $8}'
 
# total|||| |
# -rw-rw-r--|ec2-user|ec2-user|0|Dec 8|18:05
# -rw-rw-r--|ec2-user|ec2-user|0|Dec 9|05:26
# -rw-rw-r--|ec2-user|ec2-user|84|Dec 8|18:03
# -rw-rw-r--|ec2-user|ec2-user|50|Dec 8|17:45
# -rw-rw-r--|ec2-user|ec2-user|42|Dec 8|17:46
# -rw-rw-r--|ec2-user|ec2-user|340|Dec 9|05:34

