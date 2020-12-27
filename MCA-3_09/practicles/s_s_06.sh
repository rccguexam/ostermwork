echo "Enter file name : "
read file

ls -l $file | cut -d' ' -f 1,2,3,4,5,6,7,8,9 -s | awk '{print $9 ":" $1 ":" $2 ":" $3 ":" $4 ":" $5 ":" $6 ":" $7 ":" $8}' 

#output

#neel@NeelRana:/mnt/e/ROLWALA/sem-3/o.s/practicles$ sh s_s_6.sh
#Enter file name :
#sum.sh
#sum.sh:-rwxrwxrwx:1:neel:neel:239:Nov:21:10:33
#neel@NeelRana:/mnt/e/ROLWALA/sem-3/o.s/practicles$
