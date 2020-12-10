#2. The distance between two cities is input through the keyboard.  (in km). Write a program to    
#convert this distance into metres, feet, inches and centimeters and display the results.

read -p "Enter Distance between 2 cities in kms : " kilometer 
echo "Meters : "$((kilometer*1000))
echo "Feet : " $(echo $kilometer*3280.84 | bc)
echo "Inches : " $(echo $kilometer*39370.08 | bc)
echo "centimeters : " $((kilometer*100000))

#Output :
#Enter Distance between 2 cities in kms : 50
#Meters : 50000
#Feet :   164042.00
#Inches :  1968504.00
#centimeters :   5000000
