#26. Write a script for renaming each file in the directory such that it will have the current  
#shell PID as an extension. The shell script should ensure that the directories do not
#get renamed.


for f in *
do
    [ -e $f ] || continue
        mv $f $f.$$
done


#Output :
#vraj@DESKTOP-8NGKNR6:~/try$ ls
#26.sh  new1.txt  new2.txt  new3.txt

#vraj@DESKTOP-8NGKNR6:~/try$ sh 26.sh

#vraj@DESKTOP-8NGKNR6:~/try$ ls
#26.sh.587  new1.txt.587  new2.txt.587  new3.txt.587