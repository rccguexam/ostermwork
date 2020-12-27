#25. Program must display all the combinations of 1, 2, and 3.


for i in 1 2 3
do
        for j in 1 2 3
        do
                for k in 1 2 3
                do
                            
                                        echo $i $j $k
                                 
                           
                done
        done
done

# Output:

# niravchavda@niravchavda:~/Desktop/Learning/shell$ sh 25.sh 
# 1 1 1
# 1 1 2
# 1 1 3
# 1 2 1
# 1 2 2
# 1 2 3
# 1 3 1
# 1 3 2
# 1 3 3
# 2 1 1
# 2 1 2
# 2 1 3
# 2 2 1
# 2 2 2
# 2 2 3
# 2 3 1
# 2 3 2
# 2 3 3
# 3 1 1
# 3 1 2
# 3 1 3
# 3 2 1
# 3 2 2
# 3 2 3
# 3 3 1
# 3 3 2
# 3 3 3