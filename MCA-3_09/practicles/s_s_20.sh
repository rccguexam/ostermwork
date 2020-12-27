echo "Enter Exponent  : "
read exp
echo "Enter Power : "
read pow

i=0
ans=1

while [ $i -lt $pow ]
do
	ans=`expr $ans \* $exp`
	i=`expr $i + 1`
done


echo "$exp ^ $pow  = $ans"

#Output:

#neel@NeelRana:/mnt/e/Rolwala/sem-3/o.s/practicles$ sh s_s_20.sh
#Enter Exponent  :
#5
#Enter Power :
#2
#5 ^ 2  = 25
#neel@NeelRana:/mnt/e/Rolwala/sem-3/o.s/practicles$ sh s_s_20.sh
#Enter Exponent  :
#2
#Enter Power :
#5
#2 ^ 5  = 32
#neel@NeelRana:/mnt/e/Rolwala/sem-3/o.s/practicles$
