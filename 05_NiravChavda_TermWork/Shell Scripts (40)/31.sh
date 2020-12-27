#31. The script displays a list of all files in the current directory to which you have read,    
#write and execute permissions.

ls -l | awk '$1 ~ /rwx/'

# Output:

# niravchavda@niravchavda:~/Desktop/Learning/shell$ sh 31.sh 
# -rwxrwxrwx 1 niravchavda niravchavda  507 Dec  9 15:16 10.sh
# -rwxrwxrwx 1 niravchavda niravchavda 1206 Dec  9 15:25 11.sh
# -rwxrwxrwx 1 niravchavda niravchavda  186 Dec  9 15:29 14.sh
# -rwxrwxrwx 1 niravchavda niravchavda  363 Dec  9 15:29 15.sh
# -rwxrwxrwx 1 niravchavda niravchavda 1968 Dec  9 15:30 16.sh
# -rwxrwxrwx 1 niravchavda niravchavda 1424 Dec  9 15:45 17.sh
# -rwxrwxrwx 1 niravchavda niravchavda  209 Dec  9 15:46 18.sh
# -rwxrwxrwx 1 niravchavda niravchavda  508 Dec  9 15:50 19.sh
# -rwxrwxrwx 1 niravchavda niravchavda  323 Dec  9 15:51 20.sh
# -rwxrwxrwx 1 niravchavda niravchavda  285 Dec  9 15:55 21.sh
# -rwxrwxrwx 1 niravchavda niravchavda  502 Dec  9 15:57 22.sh
# -rwxrwxrwx 1 niravchavda niravchavda 1405 Dec  9 15:58 24.sh
# -rwxrwxrwx 1 niravchavda niravchavda  640 Dec  9 16:06 25.sh
# -rwxrwxrwx 1 niravchavda niravchavda 1714 Dec  9 16:15 27.sh
# -rwxrwxrwx 1 niravchavda niravchavda  376 Dec  9 16:15 28.sh
# -rwxrwxrwx 1 niravchavda niravchavda  601 Dec  9 16:17 29.sh
# -rwxrwxrwx 1 niravchavda niravchavda  569 Dec  9 14:57 2.sh
# -rwxrwxrwx 1 niravchavda niravchavda 1644 Dec  9 16:19 30.sh
# -rwxrwxrwx 1 niravchavda niravchavda  359 Dec  9 11:09 31.sh
# -rwxrwxrwx 1 niravchavda niravchavda  662 Dec  9 11:10 32.sh
# -rwxrwxrwx 1 niravchavda niravchavda 1833 Dec  9 11:10 33.sh
# -rwxrwxrwx 1 niravchavda niravchavda 1356 Dec  9 11:11 34.sh
# -rwxrwxrwx 1 niravchavda niravchavda  579 Dec  9 11:12 35.sh
# -rwxrwxrwx 1 niravchavda niravchavda  438 Dec  9 11:12 36.sh
# -rwxrwxrwx 1 niravchavda niravchavda  409 Dec  9 11:14 37.sh
# -rwxrwxrwx 1 niravchavda niravchavda  662 Dec  9 11:14 38.sh
# -rwxrwxrwx 1 niravchavda niravchavda  487 Dec  9 11:15 39.sh
# -rwxrwxrwx 1 niravchavda niravchavda  766 Dec  9 14:58 3.sh
# -rwxrwxrwx 1 niravchavda niravchavda  647 Dec  9 11:16 40.sh
# -rwxrwxrwx 1 niravchavda niravchavda  418 Dec  9 14:59 4.sh
# -rwxrwxrwx 1 niravchavda niravchavda 3666 Dec  9 14:59 5.sh
# -rwxrwxrwx 1 niravchavda niravchavda 8097 Dec  9 15:00 6.sh
# -rwxrwxrwx 1 niravchavda niravchavda  822 Dec  9 15:01 7.sh
# -rwxrwxrwx 1 niravchavda niravchavda  249 Dec  9 15:08 8.sh
# -rwxrwxrwx 1 niravchavda niravchavda  362 Dec  9 15:09 9.sh
# drwxrwxr-x 2 niravchavda niravchavda 4096 Dec  9 16:12 temp
