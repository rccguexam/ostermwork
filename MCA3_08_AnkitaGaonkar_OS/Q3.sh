#3. The length and breadth of a rectangle and radius of a circle are entered through the keyboard,  
#calculate the perimeter and area of rectangle and area and circumference of the circle.

PI=3.14
read -p "Enter Length And Breadth of Rectangle : " len breadth
read -p "Enter Radius of circle : " radius
echo "Perimeter of the Rectangle is : " $((2*len + 2*breadth))
echo "Area of Rectangle is : " $((len*breadth))
echo "Circumference of Circle : " $(echo 2.0*$PI*$radius | bc)
echo "Area of circle : " $(echo $PI*$radius^2 | bc)

#Output:
#Enter Length And Breadth of Rectangle : 5 7
#Enter Radius of circle : 5
#Perimeter of the Rectangle is :  24
#Area of Rectangle is :  35
#Circumference of Circle :  31.4
#Area of circle :  78.5
