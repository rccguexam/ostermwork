
#11. The script receives two file names as arguments, the script must check whether the #files are     
#same or not, if they are similar then delete the second file.

if [ ! -f $1 ]; then
        echo "$1 not found!"
        exit
fi

if [ ! -f $2 ]; then
        echo "$2 not found!"
        exit
fi

my_var=$(cmp -b $1 $2)
if test -z "$my_var"
then
        echo "Files are same"
        rm $2
        echo $2 "Deleted"
else
        echo "Files are not same"
fi

#OUTPUT
#$ ls
#circlePerimiter.sh  dir   dir3  f1  file   file4        head  LargestSmallest.sh  opfile  typescript
#data.dat            dir2  done  f3  file3  grosspay.sh  l1    oddeven.sh          t1      xaa

#sh oddeven.sh file file3
#cmp: EOF on file after byte 86, line 4
#Files are same
#file3 Deleted



