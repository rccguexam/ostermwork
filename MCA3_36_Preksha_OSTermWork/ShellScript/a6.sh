echo "Enter File Name : "
read fname

ls -l $fname | cut -d ' ' -f 1,2,3,4,5,6,7,8,9 |awk '{print $9 ":" $1 ":" $2 ":" $3 ":" $4 ":" $5 ":" $6 ":" $7 ":" $8}'

#output

#preksha@DESKTOP-A0UDC7F:~$ sh a6.sh
#Enter File Name :
#a1.sh
#a1.sh:-rw-r--r--:1:preksha:preksha:169:Nov:20:22:46
