#31. The script displays a list of all files in the current directory to which you have read,    
#write and execute permissions.

ls -l | awk '$1 ~ /rwx/'

#Output:
#tanishka@DESKTOP-8NGKNR6:~$ sh 31.sh
#drwxr-xr-x 2 tanishka tanishka 4096 Oct  5 20:14 hello
#-rwxr-xr-x 1 tanishka tanishka  798 Nov 25 00:13 hello.sh
#drwxr-xr-x 2 tanishka tanishka 4096 Nov 30 15:25 try
