# Q2)

# Write a shell script to generate summary from the sales.dat file.
# Sales made by 3 salesman by selling 3 products are entered in a file. Add atleast
# 10 records. The format is as shown below:
# Salesman:Product1:Product2:Product3
# Sample data:
# Mr. Abhishek Sharma:21:29:12
# Mr. Akash Srivastava:11:15:28
# Mr. Abhilash Dwivedi:31:04:13

# Calculate the followings :
# • Total sales of the company
# • Highest sold product
# • Best salesman (who sold the most)
# • Worst salesman (who sold the least)

# ***************************************************************************************************************************

sp1=0
sp2=0
sp3=0
ts=0

while read line
do
	p1=`echo $line | cut -d ":" -f2`
	p2=`echo $line | cut -d ":" -f3`
	p3=`echo $line | cut -d ":" -f4`
	sp1=`expr $sp1 + $p1`
	sp2=`expr $sp2 + $p2`
	sp3=`expr $sp3 + $p3`

	t=`expr $p1 + $p2 + $p3`
	sman=`echo $line | cut -d ":" -f1`
	echo "$sman $t" >> highsaleman.txt

done < Sales.dat

ts=`expr $sp1 + $sp2 + $sp3`
echo "Total sale of company : $ts"

echo "Product1 $sp1" > high.txt
echo "Product2 $sp2" >> high.txt
echo "Product3 $sp3" >> high.txt

echo "`sort -k2 -r -n high.txt | head -1 | cut -d " " -f1` is highest selling product"

echo "`sort -k4 -r -n highsaleman.txt | head -1 | cut -d " " -f 1-3` is best salesman"

rm high.txt
rm highsaleman.txt
