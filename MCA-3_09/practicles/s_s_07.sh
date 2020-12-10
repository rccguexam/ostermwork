echo "Enter the cost price of an item :" 
read cost_price
echo "Enter the selling price of an item :" 
read sell_price
if [ $sell_price -gt $cost_price ] 
then 
	echo "The seller made profit and thai is : " `expr $sell_price - $cost_price`
else
	echo "The seller made loss and that is : " `expr $cost_price - $sell_price`
fi

#output


#neel@NeelRana:/mnt/e/ROLWALA/sem-3/o.s/practicles$ sh s_s_7.sh
#Enter the cost price of an item :
#10000
#Enter the selling price of an item :
#12000
#The seller made profit and thai is :  2000
#neel@NeelRana:/mnt/e/ROLWALA/sem-3/o.s/practicles$ sh s_s_7.sh
#Enter the cost price of an item :
#10000
#Enter the selling price of an item :
#8000
#The seller made loss and that is :  2000
#neel@NeelRana:/mnt/e/ROLWALA/sem-3/o.s/practicles$
