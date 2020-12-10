echo "Enter Cost price : "
read cp
echo "Enter Selling price : "
read sp

if [ $sp -gt $cp ]
then 
	echo "The Seller Made profit of "`expr $sp - $cp`
else
	echo "The seller made loss of "`expr $cp - $sp`
fi

#output
#Rutwik@DESKTOP-A0UDC7F:~$ sh a7.sh
#Enter Cost price :
#100
#Enter Selling price :
#120
#The Seller Made profit of 20


