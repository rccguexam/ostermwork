echo "Press 1 for list all files of the current directory " 
echo "Press 2 for print the current directory " 
echo "Press 3 for print the date " 

ch=1

while [ $ch -ne 0 ] 
do 

	echo "Enter your choice from the above : " 
	read ch 
				
	case $ch in 
	1) 
	ls -l
	;;
							
	2)											 		pwd													;;

	3) 
	date													;; 
	
	*)
	echo "Invalid Option  : "	
	;;
esac

done

#Output:

#neel@NeelRana:/mnt/e/Rolwala/sem-3/o.s/practicles$ sh s_s_16.sh
#Press 1 for list all files of the current directory
#Press 2 for print the current directory
#Press 3 for print the date
#Enter your choice from the above :
#1
#total 0
#-rwxrwxrwx 1 neel neel 550 Nov 21 12:05 area.sh
#-rwxrwxrwx 1 neel neel 360 Nov 21 10:31 distance.sh
#-rwxrwxrwx 1 neel neel 243 Nov 21 10:29 grosspay.sh
#-rwxrwxrwx 1 neel neel 214 Nov 21 21:05 s_s_10.sh
#-rwxrwxrwx 1 neel neel 227 Nov 21 21:58 s_s_12.sh
#-rwxrwxrwx 1 neel neel 325 Nov 23 19:56 s_s_15.sh
#-rwxrwxrwx 1 neel neel 391 Nov 23 20:17 s_s_16.sh
#-rwxrwxrwx 1 neel neel 299 Nov 22 17:22 s_s_18.sh
#-rwxrwxrwx 1 neel neel  23 Nov 22 17:24 s_s_19.sh
#-rwxrwxrwx 1 neel neel 555 Nov 23 19:46 s_s_34.sh
#-rwxrwxrwx 1 neel neel  46 Nov 21 12:19 s_s_5.sh
#-rwxrwxrwx 1 neel neel 161 Nov 21 19:16 s_s_6.sh
#-rwxrwxrwx 1 neel neel 326 Nov 21 19:34 s_s_7.sh
#-rwxrwxrwx 1 neel neel 183 Nov 21 18:23 s_s_8.sh
#-rwxrwxrwx 1 neel neel 422 Nov 21 20:37 s_s_9.sh
#-rwxrwxrwx 1 neel neel 246 Nov 21 19:11 sum.sh
#Enter your choice from the above :
#2
#/mnt/e/Rolwala/sem-3/o.s/practicles
#Enter your choice from the above :
#3
#Mon Nov 23 20:18:02 IST 2020
#Enter your choice from the above :
#0
#Invalid Option  :

