#22. Write a script which reports name and size of all files in a directory. whose sizes exceed 1000. 
#The filenames should be printed in the descending order of their sizes. The total         
#no. of files must be reported.

ls --sort=size -l | awk '$5 >= 1000 {print $9, "->", $5}'

# Output :

# niravchavda@niravchavda:~/Desktop/Learning/shell$ sh 22.sh 
# 6.sh -> 8097
# 5.sh -> 3666
# 16.sh -> 1968
# 33.sh -> 1833
# 17.sh -> 1424
# 34.sh -> 1356
# 30.sh -> 1331
# 24.sh -> 1218
# 11.sh -> 1206