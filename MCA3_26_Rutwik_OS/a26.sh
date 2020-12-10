echo "This script is purposely exited to accidently avoid renaming files"
echo "To rename files comment the below line"
#exit

for f in *; do
	    [ -e $f ] || continue
	        mv $f $f.$$
done
