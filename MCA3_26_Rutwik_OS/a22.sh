ls --sort=size -l | awk '$5 >= 1000 {print $5,$9}'


#output
#Rutwik@DESKTOP-A0UDC7F:~$ sh a22.sh
#4096 mydir
#1496 a16.sh
#1392 a17.sh
#1059 MCA3_36_Preksha.sh
