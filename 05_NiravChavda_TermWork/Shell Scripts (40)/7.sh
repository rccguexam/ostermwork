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
        echo "Loss : " $((cost-selling))
else
        echo "No Profit No Loss"
fi

#Output :

# Enter The Cost Price For Product : 780
# Enter The Selling price for Product : 810
# Profit :  30

# Enter The Cost Price For Product : 810
# Enter The Selling price for Product : 780
# Loss :  30

# Enter The Cost Price For Product : 780
# Enter The Selling price for Product : 780
# No Profit No Loss

