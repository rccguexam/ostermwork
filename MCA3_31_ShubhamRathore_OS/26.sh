#26. Write a script for renaming each file in the directory such that it will have the current  
#shell PID as an extension. The shell script should ensure that the directories do not
#get renamed.

for f in *
do
    [ -e $f ] || continue
        mv $f $f.$$
done

#Output :
#circlePerimiter.sh.3125  dir3.3125  file.3125         l1.3125                  t1.3125
#data.dat.3125            done.3125  file4.3125        LargestSmallest.sh.3125  #typescript.3125
#dir2.3125                f1.3125    grosspay.sh.3125  oddeven.sh.3125          xaa.3125
#dir.3125                 f3.3125    head.3125         opfile.3125
