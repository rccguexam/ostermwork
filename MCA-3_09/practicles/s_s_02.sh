echo "Enter the distance in kilometers  : "
read km
meter=`expr $km \* 1000`
echo " Distance in meter is : " $meter 

cm=`expr $meter \* 100`
echo " Distance in centimeter is : " $cm

feet=`echo " scale = 2; $km * 3280.84" | bc`
echo " Distance in feet is : " $feet

inches=`echo " scale = 2; $km * 39370.08" | bc` 
echo " Distance in inches is : " $inches  

#output

#neel@NeelRana:/mnt/e/ROLWALA/sem-3/o.s/practicles$ sh distance.sh
#Enter the distance in kilometers  :
#2
#Distance in meter is :  2000
#Distance in centimeter is :  200000
#Distance in feet is :  6561.68
#Distance in inches is :  78740.16
#neel@NeelRana:/mnt/e/ROLWALA/sem-3/o.s/practicles$
