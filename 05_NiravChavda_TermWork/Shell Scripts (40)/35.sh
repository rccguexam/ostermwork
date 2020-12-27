#35. Print armstrog nos. from 1 to 500. 

i=1
while [ $i -le 500 ]
do
        j=$i
        total=0
        while [ $j -gt 0 ]
        do
                temp=$(echo $j%10 | bc)
                sum=$(echo $temp^3 | bc)
                total=$(echo $total+$sum | bc)
                j=$(echo $j/10 | bc)
        done
        if [ $total -eq $i ]
        then
                echo $i " is armstrong number"
        fi
        i=$((i+1))
done

# Output:

# niravchavda@niravchavda:~/Desktop/Learning/shell$ sh 35.sh 
# 1  is armstrong number
# 153  is armstrong number
# 370  is armstrong number
# 371  is armstrong number
# 407  is armstrong number