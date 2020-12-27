echo "Enter the year : "
read year

if [ `expr $year % 4` -eq 0 -a `expr $year % 100` -ne 0 -o `expr $year % 400` -eq 0 ] 
then 
	echo " Year $year is leap year : "
else
	echo " Year $year is not leap year : "
fi 

#output

#neel@NeelRana:/mnt/e/ROLWALA/sem-3/o.s/practicles$ sh s_s_10.sh
#Enter the year :
#2020
# Year 2020 is leap year :
# neel@NeelRana:/mnt/e/ROLWALA/sem-3/o.s/practicles$ sh s_s_10.sh
# Enter the year :
# 2019
# Year 2019 is not leap year :
# neel@NeelRana:/mnt/e/ROLWALA/sem-3/o.s/practicles$
