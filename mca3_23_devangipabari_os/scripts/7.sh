
#7. If cost price and selling price of an item are entered through the keyboard, write a program 
#to determine whether the seller has made profit or loss. Also determine how much profit/loss    
#is made.

read -p "Enter The Cost Price For Product : " cost
read -p "Enter The Selling price for Product : " selling
if [ $cost -lt $selling ]
then
        echo "Profit : " $((selling-cost))
elif [ $cost -gt $selling ]
then
        echo "Loss : " $((selling-cost))
else
        echo "No Profit No Loss"
fi

#OUTPUT
#Enter The Cost Price For Product : 12500
#Enter The Selling price for Product : 13500
#Profit :  1000

