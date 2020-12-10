startFromLine=$(echo "$lines-$1" | bc)
echo -e "\e[1;36m"  # Changing Color
printf "\n ---------- Using sed ----------\n"
echo -en "\e[0m"  # Changing Color Back
sed -n 1,$1p $2
echo " ..."
tail -$1 $2

# Count Lines
lines=$(wc -l $2 | awk '{print $1;}')
