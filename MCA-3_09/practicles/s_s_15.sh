#get the current hour in (24 hrs format)
hour=$(date +"%H")

if [ $hour -ge 0 -a $hour -lt 12 ] 
then 
	echo " Good Morning , $USER " 
elif [ $hour -ge 12 -a $hour -lt 17 ] 
then
	echo " Good Afternoon , $USER " 
elif [ $hour -ge 17 -a $hour -lt 19 ] 
then
	echo " Good Evening , $USER "
else
	echo "Good Night , $USER "
fi

#output

#  neel@NeelRana:/mnt/e/Rolwala/sem-3/o.s/practicles$ sh s_s_15.sh
#  Good Night , neel
#  neel@NeelRana:/mnt/e/Rolwala/sem-3/o.s/practicles$
