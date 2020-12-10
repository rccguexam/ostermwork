
#6. The script will receive the filename or filename with its full path, the script should 
#obtain information about this file as given by "ls -l" and display it in proper format.
#    eg. Filename : , File access permissions : , Number of links : , Owner of the file : , 
#Group to which belongs : Size of file : , File modification date : , File modification time :


echo "---------- Using stat----------"
stat -c "%A %h %U %G %s %.19y %n" *m  



printf "\n---------- Using ls -l ----------\n"

ls -l | tr -s ' ' | cut -d ' ' -f 1-9 m -s | awk '{print $1,$2,$3,$4,$5,$6,$7,$8,"\033[32;1m"$9"\033[0m"}'
echo ""
ls -l | tr -s ' ' |cut -d ' ' -f 1-9 -s | awk '{print $1" | "$3" | "$4" | "$5" | "$6,$7" | "$8" |\033[32;1m "$9 "\033[0m"}'

#cut: m: No such file or directory

#total |  |  |  |   |  | 
#-rw-rw-r-- | devangi27 | devangi27 | 155 | Dec 2 | 13:44 | circlePerimiter.sh
#-rw-rw-r-- | devangi27 | devangi27 | 61 | Nov 20 | 20:41 | data.dat
#drwxrwxr-x | devangi27 | devangi27 | 4096 | Nov 20 | 20:35 | dir
#drwxr-x--x | devangi27 | devangi27 | 4096 | Nov 20 | 20:52 | dir2
#drwxr-x--x | devangi27 | devangi27 | 4096 | Nov 20 | 20:28 | dir3
#-rw-rw-r-- | devangi27 | devangi27 | 265 | Dec 2 | 09:07 | done
#-rw-rw-r-- | devangi27 | devangi27 | 22 | Dec 2 | 08:56 | f1
#-rw-rw-r-- | devangi27 | devangi27 | 22 | Dec 2 | 08:57 | f3
#-rw-rw-r-- | devangi27 | devangi27 | 86 | Dec 2 | 09:38 | file
#-rw-rw-r-- | devangi27 | devangi27 | 448 | Dec 2 | 09:21 | file3
#-rw-rw-r-- | devangi27 | devangi27 | 505 | Dec 2 | 09:21 | file4
#-rw-rw-r-- | devangi27 | devangi27 | 209 | Dec 1 | 23:30 | grosspay.sh
#-rw-rw-r-- | devangi27 | devangi27 | 0 | Dec 2 | 09:18 | head
#-rw-rw-r-- | devangi27 | devangi27 | 22 | Dec 2 | 08:56 | l1
#-rw-rw-r-- | devangi27 | devangi27 | 25 | Dec 2 | 14:09 | LargestSmallest.sh
#-rw-rw-r-- | devangi27 | devangi27 | 741 | Dec 9 | 12:00 | oddeven.sh
#-rw-rw-r-- | devangi27 | devangi27 | 86 | Dec 2 | 09:36 | opfile
#-rw-rw-r-- | devangi27 | devangi27 | 120 | Dec 2 | 09:39 | t1
#-rw-rw-r-- | devangi27 | devangi27 | 49152 | Dec 2 | 14:05 | typescript
#-rw-rw-r-- | devangi27 | devangi27 | 86 | Dec 2 | 09:35 | xaa
