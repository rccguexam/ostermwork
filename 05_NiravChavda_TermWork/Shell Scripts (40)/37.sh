#37. Display all the numbers from 1 to 100 which are divisible by 7.

echo "Numbers divisible By 7 from 1 to 100: "
n=7
i=1
while [ $i -le 100 ]
do
        rem=$((i%n))
        if [ $rem -eq 0 ]
        then
                echo $i
        fi

        i=$((i+1))
done

# Output:
# niravchavda@niravchavda:~/Desktop/Learning/shell$ sh 37.sh 
# Numbers divisible By 7 from 1 to 100: 
# 7
# 14
# 21
# 28
# 35
# 42
# 49
# 56
# 63
# 70
# 77
# 84
# 91
# 98