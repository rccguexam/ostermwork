#33. A script will receive any number of filenames as arguments. It should check whether such  
#files already exist. If they do, then it       should be reported, if not then check if a         
#subdirectory "mydir" exists or not in the current directory, if it doesnt exist then it         
#should be created and in it the files supplied as arguments should be created. 

if [ $# -eq 0 ]; then
        echo "No Arguments passed"
        exit
fi

for i; do
        # If file exists
        if [ -f $i ]
        then
                echo "$i exists"
        else
                # if "mkdir" exists
                if [ -d "mydir" ]
                then
                     # Directory exists
                     printf ""
                else
                     mkdir mydir
                fi
                touch mydir/$i
                echo "$i file created in \"mydir\""
        fi
done

#Output:

# niravchavda@niravchavda:~/Desktop/Learning/shell$ ls
# 10.sh  15.sh  18.sh  20.sh  24.sh  27.sh  2.sh   32.sh  35.sh  38.sh  40.sh  6.sh  9.sh       file1.txt      wordfile.txt
# 11.sh  16.sh  19.sh  21.sh  25.sh  28.sh  30.sh  33.sh  36.sh  39.sh  4.sh   7.sh  copy1.txt  temp
# 14.sh  17.sh  1.sh   22.sh  26.sh  29.sh  31.sh  34.sh  37.sh  3.sh   5.sh   8.sh  copy2.txt  wordfile2.txt

# niravchavda@niravchavda:~/Desktop/Learning/shell$ sh 33.sh test.txt
# test.txt file created in "mydir"

# niravchavda@niravchavda:~/Desktop/Learning/shell$ sh 33.sh wordfile.txt
# wordfile.txt exists

# niravchavda@niravchavda:~/Desktop/Learning/shell$ ls
# 10.sh  15.sh  18.sh  20.sh  24.sh  27.sh  2.sh   32.sh  35.sh  38.sh  40.sh  6.sh  9.sh       file1.txt  wordfile2.txt
# 11.sh  16.sh  19.sh  21.sh  25.sh  28.sh  30.sh  33.sh  36.sh  39.sh  4.sh   7.sh  copy1.txt  mydir      wordfile.txt
# 14.sh  17.sh  1.sh   22.sh  26.sh  29.sh  31.sh  34.sh  37.sh  3.sh   5.sh   8.sh  copy2.txt  temp

# niravchavda@niravchavda:~/Desktop/Learning/shell$ cd mydir/
# niravchavda@niravchavda:~/Desktop/Learning/shell/mydir$ ls
# test.txt
