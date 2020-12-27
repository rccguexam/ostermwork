echo "Sundays in current month are:"

echo " ----- Using AWK ----- "
cal | awk 'FNR > 2{print $1}'

#output

#Sundays in current month are:
 #----- Using AWK -----
 #1
 #6
 #13
 #20
 #27

