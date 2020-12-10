echo "Enter Distance between 2 cities :"
read dist
meter=`expr $dist \* 1000`
echo "Distance in meter = "$meter

feet=`echo "scale = 2;$dist * 3280.84"| bc`
echo "Distance in Feet = "$feet

inch=`echo "scale = 2;$dist *39370.08"| bc`
echo "Distance in Inches = "$inch

cm=`expr $dist \* 100`
echo "Distance in Centimeter = "$cm

#output

    #preksha@DESKTOP-A0UDC7F:~$ sh a2.sh
    #Enter Distance between 2 cities :
    #125
    #Distance in meter = 125000
    #Distance in Feet = 410105.00
    #Distance in Inches = 4921260.00
    #Distance in Centimeter = 12500
