#area of rectangle and the circle 

echo "Enter the length of the rectangle : "
read len
echo "Enter he breathe of the rectangle : "
read breath
area=`echo "scale = 2; $len * $breath " | bc`
echo "area of the rectangle is : " $area
peri=`echo "scale = 2; $area * 2 " | bc`
echo "perimeter of the rectangle is  :" $peri
echo "Enter the radius of the circle : "
read r
a=`echo " scale = 2 ; 3.14 * $r * $r " | bc`
echo "The area of the circle is : " $a  
cir=`echo " scale = 2 ;  2 * 3.14 * $r " | bc`
echo "The circumference of the circle is : " $cir

#output

#neel@NeelRana:/mnt/e/ROLWALA/sem-3/o.s/practicles$ sh area.sh
#Enter the length of the rectangle :
#10
#Enter he breathe of the rectangle :
#2.5
#area of the rectangle is :  25.0
#perimeter of the rectangle is  : 50.0
#Enter the radius of the circle :
#5.5
#The area of the circle is :  94.98
#The circumference of the circle is :  34.54
#neel@NeelRana:/mnt/e/ROLWALA/sem-3/o.s/practicles$
