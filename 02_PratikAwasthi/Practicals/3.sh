#3. The length and breadth of a rectangle and radius of a circle are entered through the keyboard,  
#calculate the perimeter and area of rectangle and area and circumference of the circle.

PI=3.14159
read -p "Enter Length And Breadth of Rectangle : " length breadth
read -p "Enter Radius of circle : " radius
echo "Perimeter of the Rectangle is : " $((2*length + 2*breadth))
echo "Area of Rectangle is : " $((length*breadth))
echo "Circumference of Circle : " $(echo 2.0*$PI*$radius | bc)
echo "Area of circle : " $(echo $PI*$radius^2 | bc)

#Output:
#Enter Length And Breadth of Rectangle : 10 20
#Enter Radius of circle : 1
#Perimeter of the Rectangle is :  30
#Area of Rectangle is :  200
#Circumference of Circle :  6.28
#Area of circle :  3.14
