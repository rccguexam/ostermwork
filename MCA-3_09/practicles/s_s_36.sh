echo "Enter angle "
read angle

if [ $angle -ge 0 -a $angle -lt 90 ] 
then
	echo "Acute angle"
elif [ $angle -eq 90 ] 
then
	echo "Right angle " 
elif [ $angle -gt 90 -a $angle -le 180 ] 
then 
	echo "Obtuse angle "
else
	echo "Incorrect input"
fi


#Output:

#neel@NeelRana:/mnt/e/ROLWALA/sem-3/o.s/practicles$ vi s_s_36.sh
#neel@NeelRana:/mnt/e/ROLWALA/sem-3/o.s/practicles$ sh s_s_36.sh
#Enter angle
#120
#Obtuse angle
#neel@NeelRana:/mnt/e/ROLWALA/sem-3/o.s/practicles$
