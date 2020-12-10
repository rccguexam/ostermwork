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

# -rwxrwxrwx 1 ec2-user ec2-user 342 Dec  9 05:54 Q16.sh.3056
# -rwxrwxrwx 1 ec2-user ec2-user  96 Dec  9 06:18 Q26.sh.3056




