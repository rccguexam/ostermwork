# 26. Write a script for renaming each file in the directory such that it will have the current  
# shell PID as an extension. The shell script should ensure that the directories do not
# get renamed.

for f in *
do
    [ -d $f ] || continue
		ext=`echo $$`
        mv $f $f.$ext
done

# Output :

# -rwxrwxrwx 1 ec2-user ec2-user 342 Dec  9 05:54 16.sh.3056
# -rwxrwxrwx 1 ec2-user ec2-user  96 Dec  9 06:18 26.sh.3056
# -rw-rw-r-- 1 ec2-user ec2-user   0 Dec  8 18:05 cut.3056
# -rw-rw-r-- 1 ec2-user ec2-user   0 Dec  9 05:26 ls.3056
# -rw-rw-r-- 1 ec2-user ec2-user  84 Dec  8 18:03 script.sh.3056
# -rwxrwxrwx 1 ec2-user ec2-user 295 Dec  9 05:52 seven.sh.3056
# -rw-rw-r-- 1 ec2-user ec2-user  50 Dec  8 17:45 sports.dat.3056
# -rw-rw-r-- 1 ec2-user ec2-user  42 Dec  8 17:46 students.dat.3056
# -rw-rw-r-- 1 ec2-user ec2-user 340 Dec  9 05:34 xyz.txt.3056

