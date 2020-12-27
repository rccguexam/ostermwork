#!/usr/bin/bash

# Write a shell script to generate summary from the sales.dat file.
# Sales made by 3 salesman by selling 3 products are entered in a file. Add atleast 10 records. The format is as shown below:
# Salesman:Product1:Product2:Product3

# Sample data:
# Mr. Abhishek Sharma:21:29:12
# Mr. Akash Srivastava:11:15:28
# Mr. Abhilash Dwivedi:31:04:13


# Calculate the followings :
#     • Total sales of the company
#     • Highest sold product
#     • Best salesman (who sold the most)
#     • Worst salesman (who sold the least)


getMax() {
    arr=("${!1}")
    n=${#arr[@]}
    i=0
    max=0
    
    while [ $i -lt $n ]
    do
        if [ ${arr[i]} -gt ${arr[max]} ]
        then
            max=$i
        fi

        i=`expr $i + 1`
    done

    echo $max
    return $max
}

getMin() {
    arr=("${!1}")
    n=${#arr[@]}
    i=0
    min=0
    
    while [ $i -lt $n ]
    do
        if [ ${arr[i]} -lt ${arr[min]} ]
        then
            min=$i
        fi

        i=`expr $i + 1`
    done

    echo $min
    return $min
}

salesmanList=`cut -d ":" -f1- sales.dat`

declare -a products
declare -a salesmen

for i in 0 1 2
do
    products[i]=0
done

i=0
n=`wc -l sales.dat`
n=`echo "$n"|cut -d " " -f1`
while [ $i -le $n ]
do
    salesmen[i]=0
    i=`expr $i + 1`
done

i=0

for salesman in $salesmanList
do
    salesmanName=`echo "$salesman"|cut -d ":" -f1`
    p1=`echo "$salesman"|cut -d ":" -f2`
    p2=`echo "$salesman"|cut -d ":" -f3`
    p3=`echo "$salesman"|cut -d ":" -f4`
    
    salesmen[i]=`expr $p1 + $p2 + $p3`
    products[0]=`expr ${products[0]} + $p1`
    products[1]=`expr ${products[1]} + $p2`
    products[2]=`expr ${products[2]} + $p3`

    i=`expr $i + 1`
done

echo "Product 1: ${products[0]}" 
echo "Product 2: ${products[1]}" 
echo "Product 3: ${products[2]}" 
echo "Total Sales: " `expr ${products[0]} + ${products[1]} + ${products[2]}`

highestSoldProduct=`getMax products[@]`
bestSalesman=`getMax salesmen[@]`
worstSalesman=`getMin salesmen[@]`

echo "Highest sold product is Product $((highestSoldProduct+1)) with ${products[highestSoldProduct]} sales."

bestSalesmanName=`head -n $((bestSalesman+1)) sales.dat|tail -n 1|cut -d ":" -f1`
echo "Best salesman is '$bestSalesmanName' with ${salesmen[bestSalesman]} sales."

worstSalesmanName=`head -n $((worstSalesman+1)) sales.dat|tail -n 1|cut -d ":" -f1`
echo "Worst salesman is '$worstSalesmanName' with ${salesmen[worstSalesman]} sales."


# OUTPUT

# niravchavda@niravchavda:/media/niravchavda/DATA/Study/MCA/SEM III/OS/10 Programs$ cat sales.dat
# Salesman-1:21:29:12
# Salesman-2:11:15:28
# Salesman-3:31:04:13
# Salesman-4:25:07:09
# Salesman-5:12:12:45
# Salesman-6:11:19:32
# Salesman-7:19:11:10
# Salesman-8:01:09:19
# Salesman-9:09:23:02
# Salesman-10:22:20:05

# niravchavda@niravchavda:/media/niravchavda/DATA/Study/MCA/SEM III/OS/10 Programs$ ./2.sh
# Product 1: 162
# Product 2: 149
# Product 3: 175
# Total Sales:  486
# Highest sold product is Product 3 with 175 sales.
# Best salesman is 'Salesman-5' with 69 sales.
# Worst salesman is 'Salesman-8' with 29 sales.