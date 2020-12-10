echo "Enter length for rectangle :"
read length
echo "Enter breadth for rectangle :"
read breadth

area=`echo "scale = 2;$length * $breadth" | bc`
echo "Area of Rectangle = "$area
peri=`echo "scale = 2;$area * 2" | bc`
echo "Perimeter of rectangle = "$peri
echo "Enter radius for circle :"
read radius

area_c=`echo "scale = 2;3.14 * $radius * $radius" | bc`
echo "Area of circle = "$area_c

cirm=`echo "scale = 2; 2 * 3.14 * $radius" | bc`
echo "Circumference  of the circle = "$cirm

#output

#preksha@DESKTOP-A0UDC7F:~$ sh a3.sh
#Enter length for rectangle :
#2
#Enter breadth for rectangle :
#3
#Area of Rectangle = 6
#Perimeter of rectangle = 12
#Enter radius for circle :
#3
#Area of circle = 28.26
#Circumference  of the circle = 18.84
