#6. The script will receive the filename or filename with its full path, the script should 
#obtain information about this file as given by "ls -l" and display it in proper format.
#    eg. Filename : , File access permissions : , Number of links : , Owner of the file : , 
#Group to which belongs : Size of file : , File modification date : , File modification time :


echo "---------- Using stat----------"
stat -c "%A %h %U %G %s %.19y %n" *

printf "\n---------- Using ls -l ----------\n"

ls -l | tr -s ' ' | cut -d ' ' -f 1-9 -s | awk '{print $1,$2,$3,$4,$5,$6,$7,$8,"\033[32;1m"$9"\033[0m"}'
echo ""
ls -l | tr -s ' ' |cut -d ' ' -f 1-9 -s | awk '{print $1" | "$3" | "$4" | "$5" | "$6,$7" | "$8" |\033[32;1m "$9 "\033[0m"}'


#Output:

# ---------- Using stat----------
# -rwxrwxrwx 1 niravchavda niravchavda 459 2020-12-09 10:52:39 10.sh
# -rwxrwxrwx 1 niravchavda niravchavda 1051 2020-12-09 10:53:34 11.sh
# -rwxrwxrwx 1 niravchavda niravchavda 181 2020-12-09 10:53:59 14.sh
# -rwxrwxrwx 1 niravchavda niravchavda 362 2020-12-09 10:54:24 15.sh
# -rwxrwxrwx 1 niravchavda niravchavda 1536 2020-12-09 11:18:34 16.sh
# -rwxrwxrwx 1 niravchavda niravchavda 619 2020-12-09 10:57:51 17.sh
# -rwxrwxrwx 1 niravchavda niravchavda 204 2020-12-09 10:56:47 18.sh
# -rwxrwxrwx 1 niravchavda niravchavda 418 2020-12-09 10:57:25 19.sh
# -rwxrwxrwx 1 niravchavda niravchavda 569 2020-12-09 14:57:14 2.sh
# -rwxrwxrwx 1 niravchavda niravchavda 260 2020-12-09 10:58:18 20.sh
# -rwxrwxrwx 1 niravchavda niravchavda 532 2020-12-09 10:59:19 21.sh
# -rwxrwxrwx 1 niravchavda niravchavda 336 2020-12-09 11:00:02 22.sh
# -rwxrwxrwx 1 niravchavda niravchavda 1218 2020-12-09 11:17:29 24.sh
# -rwxrwxrwx 1 niravchavda niravchavda 583 2020-12-09 11:02:22 25.sh
# -rwxrwxrwx 1 niravchavda niravchavda 476 2020-12-09 11:03:14 26.sh
# -rwxrwxrwx 1 niravchavda niravchavda 938 2020-12-09 11:03:49 27.sh
# -rwxrwxrwx 1 niravchavda niravchavda 376 2020-12-09 11:07:16 28.sh
# -rwxrwxrwx 1 niravchavda niravchavda 631 2020-12-09 11:07:56 29.sh
# -rwxrwxrwx 1 niravchavda niravchavda 766 2020-12-09 14:58:28 3.sh
# -rwxrwxrwx 1 niravchavda niravchavda 1331 2020-12-09 11:09:07 30.sh
# -rwxrwxrwx 1 niravchavda niravchavda 359 2020-12-09 11:09:40 31.sh
# -rwxrwxrwx 1 niravchavda niravchavda 662 2020-12-09 11:10:09 32.sh
# -rwxrwxrwx 1 niravchavda niravchavda 1833 2020-12-09 11:10:54 33.sh
# -rwxrwxrwx 1 niravchavda niravchavda 1356 2020-12-09 11:11:40 34.sh
# -rwxrwxrwx 1 niravchavda niravchavda 579 2020-12-09 11:12:06 35.sh
# -rwxrwxrwx 1 niravchavda niravchavda 438 2020-12-09 11:12:43 36.sh
# -rwxrwxrwx 1 niravchavda niravchavda 409 2020-12-09 11:14:21 37.sh
# -rwxrwxrwx 1 niravchavda niravchavda 662 2020-12-09 11:14:52 38.sh
# -rwxrwxrwx 1 niravchavda niravchavda 487 2020-12-09 11:15:53 39.sh
# -rwxrwxrwx 1 niravchavda niravchavda 418 2020-12-09 14:59:06 4.sh
# -rwxrwxrwx 1 niravchavda niravchavda 647 2020-12-09 11:16:29 40.sh
# -rwxrwxrwx 1 niravchavda niravchavda 3666 2020-12-09 14:59:39 5.sh
# -rwxrwxrwx 1 niravchavda niravchavda 5536 2020-12-09 10:02:04 6.sh
# -rwxrwxrwx 1 niravchavda niravchavda 802 2020-12-09 10:08:58 7.sh
# -rwxrwxrwx 1 niravchavda niravchavda 251 2020-12-09 10:50:59 8.sh
# -rwxrwxrwx 1 niravchavda niravchavda 389 2020-12-09 10:52:07 9.sh

# ---------- Using ls -l ----------
# total 148       
# -rwxrwxrwx 1 niravchavda niravchavda 459 Dec 9 10:52 10.sh
# -rwxrwxrwx 1 niravchavda niravchavda 1051 Dec 9 10:53 11.sh
# -rwxrwxrwx 1 niravchavda niravchavda 181 Dec 9 10:53 14.sh
# -rwxrwxrwx 1 niravchavda niravchavda 362 Dec 9 10:54 15.sh
# -rwxrwxrwx 1 niravchavda niravchavda 1536 Dec 9 11:18 16.sh
# -rwxrwxrwx 1 niravchavda niravchavda 619 Dec 9 10:57 17.sh
# -rwxrwxrwx 1 niravchavda niravchavda 204 Dec 9 10:56 18.sh
# -rwxrwxrwx 1 niravchavda niravchavda 418 Dec 9 10:57 19.sh
# -rwxrwxrwx 1 niravchavda niravchavda 260 Dec 9 10:58 20.sh
# -rwxrwxrwx 1 niravchavda niravchavda 532 Dec 9 10:59 21.sh
# -rwxrwxrwx 1 niravchavda niravchavda 336 Dec 9 11:00 22.sh
# -rwxrwxrwx 1 niravchavda niravchavda 1218 Dec 9 11:17 24.sh
# -rwxrwxrwx 1 niravchavda niravchavda 583 Dec 9 11:02 25.sh
# -rwxrwxrwx 1 niravchavda niravchavda 476 Dec 9 11:03 26.sh
# -rwxrwxrwx 1 niravchavda niravchavda 938 Dec 9 11:03 27.sh
# -rwxrwxrwx 1 niravchavda niravchavda 376 Dec 9 11:07 28.sh
# -rwxrwxrwx 1 niravchavda niravchavda 631 Dec 9 11:07 29.sh
# -rwxrwxrwx 1 niravchavda niravchavda 569 Dec 9 14:57 2.sh
# -rwxrwxrwx 1 niravchavda niravchavda 1331 Dec 9 11:09 30.sh
# -rwxrwxrwx 1 niravchavda niravchavda 359 Dec 9 11:09 31.sh
# -rwxrwxrwx 1 niravchavda niravchavda 662 Dec 9 11:10 32.sh
# -rwxrwxrwx 1 niravchavda niravchavda 1833 Dec 9 11:10 33.sh
# -rwxrwxrwx 1 niravchavda niravchavda 1356 Dec 9 11:11 34.sh
# -rwxrwxrwx 1 niravchavda niravchavda 579 Dec 9 11:12 35.sh
# -rwxrwxrwx 1 niravchavda niravchavda 438 Dec 9 11:12 36.sh
# -rwxrwxrwx 1 niravchavda niravchavda 409 Dec 9 11:14 37.sh
# -rwxrwxrwx 1 niravchavda niravchavda 662 Dec 9 11:14 38.sh
# -rwxrwxrwx 1 niravchavda niravchavda 487 Dec 9 11:15 39.sh
# -rwxrwxrwx 1 niravchavda niravchavda 766 Dec 9 14:58 3.sh
# -rwxrwxrwx 1 niravchavda niravchavda 647 Dec 9 11:16 40.sh
# -rwxrwxrwx 1 niravchavda niravchavda 418 Dec 9 14:59 4.sh
# -rwxrwxrwx 1 niravchavda niravchavda 3666 Dec 9 14:59 5.sh
# -rwxrwxrwx 1 niravchavda niravchavda 5536 Dec 9 10:02 6.sh
# -rwxrwxrwx 1 niravchavda niravchavda 802 Dec 9 10:08 7.sh
# -rwxrwxrwx 1 niravchavda niravchavda 251 Dec 9 10:50 8.sh
# -rwxrwxrwx 1 niravchavda niravchavda 389 Dec 9 10:52 9.sh

# total |  |  |  |   |  | 
# -rwxrwxrwx | niravchavda | niravchavda | 459 | Dec 9 | 10:52 | 10.sh
# -rwxrwxrwx | niravchavda | niravchavda | 1051 | Dec 9 | 10:53 | 11.sh
# -rwxrwxrwx | niravchavda | niravchavda | 181 | Dec 9 | 10:53 | 14.sh
# -rwxrwxrwx | niravchavda | niravchavda | 362 | Dec 9 | 10:54 | 15.sh
# -rwxrwxrwx | niravchavda | niravchavda | 1536 | Dec 9 | 11:18 | 16.sh
# -rwxrwxrwx | niravchavda | niravchavda | 619 | Dec 9 | 10:57 | 17.sh
# -rwxrwxrwx | niravchavda | niravchavda | 204 | Dec 9 | 10:56 | 18.sh
# -rwxrwxrwx | niravchavda | niravchavda | 418 | Dec 9 | 10:57 | 19.sh
# -rwxrwxrwx | niravchavda | niravchavda | 260 | Dec 9 | 10:58 | 20.sh
# -rwxrwxrwx | niravchavda | niravchavda | 532 | Dec 9 | 10:59 | 21.sh
# -rwxrwxrwx | niravchavda | niravchavda | 336 | Dec 9 | 11:00 | 22.sh
# -rwxrwxrwx | niravchavda | niravchavda | 1218 | Dec 9 | 11:17 | 24.sh
# -rwxrwxrwx | niravchavda | niravchavda | 583 | Dec 9 | 11:02 | 25.sh
# -rwxrwxrwx | niravchavda | niravchavda | 476 | Dec 9 | 11:03 | 26.sh
# -rwxrwxrwx | niravchavda | niravchavda | 938 | Dec 9 | 11:03 | 27.sh
# -rwxrwxrwx | niravchavda | niravchavda | 376 | Dec 9 | 11:07 | 28.sh
# -rwxrwxrwx | niravchavda | niravchavda | 631 | Dec 9 | 11:07 | 29.sh
# -rwxrwxrwx | niravchavda | niravchavda | 569 | Dec 9 | 14:57 | 2.sh
# -rwxrwxrwx | niravchavda | niravchavda | 1331 | Dec 9 | 11:09 | 30.sh
# -rwxrwxrwx | niravchavda | niravchavda | 359 | Dec 9 | 11:09 | 31.sh
# -rwxrwxrwx | niravchavda | niravchavda | 662 | Dec 9 | 11:10 | 32.sh
# -rwxrwxrwx | niravchavda | niravchavda | 1833 | Dec 9 | 11:10 | 33.sh
# -rwxrwxrwx | niravchavda | niravchavda | 1356 | Dec 9 | 11:11 | 34.sh
# -rwxrwxrwx | niravchavda | niravchavda | 579 | Dec 9 | 11:12 | 35.sh
# -rwxrwxrwx | niravchavda | niravchavda | 438 | Dec 9 | 11:12 | 36.sh
# -rwxrwxrwx | niravchavda | niravchavda | 409 | Dec 9 | 11:14 | 37.sh
# -rwxrwxrwx | niravchavda | niravchavda | 662 | Dec 9 | 11:14 | 38.sh
# -rwxrwxrwx | niravchavda | niravchavda | 487 | Dec 9 | 11:15 | 39.sh
# -rwxrwxrwx | niravchavda | niravchavda | 766 | Dec 9 | 14:58 | 3.sh
# -rwxrwxrwx | niravchavda | niravchavda | 647 | Dec 9 | 11:16 | 40.sh
# -rwxrwxrwx | niravchavda | niravchavda | 418 | Dec 9 | 14:59 | 4.sh
# -rwxrwxrwx | niravchavda | niravchavda | 3666 | Dec 9 | 14:59 | 5.sh
# -rwxrwxrwx | niravchavda | niravchavda | 5536 | Dec 9 | 10:02 | 6.sh
# -rwxrwxrwx | niravchavda | niravchavda | 802 | Dec 9 | 10:08 | 7.sh
# -rwxrwxrwx | niravchavda | niravchavda | 251 | Dec 9 | 10:50 | 8.sh
# -rwxrwxrwx | niravchavda | niravchavda | 389 | Dec 9 | 10:52 | 9.sh