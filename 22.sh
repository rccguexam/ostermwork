# 22. Write a script which reports name and size of all files in a directory. whose sizes exceed 1000. 
# The filenames should be printed in       the descending order of their sizes. The total         
# no. of files must be reported.

ls -l|tail -n+2 | sort -nk5 | awk '$5 >= 300 {print $5,$9}'


# Output :


# 340 xyz.txt
# 342 16.sh