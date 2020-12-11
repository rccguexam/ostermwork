
#31. The script displays a list of all files in the current directory to which you have read,    
#write and execute permissions.

ls -l | awk '$1 ~ /rwx/'

#Output:
#drwxr-x--x 2 shubham31 shubham31  4096 Nov 20 20:52 dir2.3125
#drwxrwxr-x 2 shubham31 shubham31  4096 Nov 20 20:35 dir.3125
#drwxr-x--x 2 shubham31 shubham31  4096 Nov 20 20:28 dir3.3125


