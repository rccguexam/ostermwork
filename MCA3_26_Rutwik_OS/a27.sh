 if [ $# -eq 0 ]; then
	printf "Usage:\n"
	echo "./27-findWordFromFile.sh <wordFile> <findFile ...>"
	exit
 fi

 filesToRead=$(($#-1))
 echo $filesToRead

 # Reading Line by Line
 while read line; do
# Reading Word by Word
	for word in $line; do
		echo "Searching word: '$word' ..."
		# 2 is slice starting index
		# filesToRead is slice length
		grep --color=always -n $word ${@:2:filesToRead}
		printf "Done.\n\n"
	done
done <"$1" # $1 is the file name we want to search

#output
#preksha@DESKTOP-A0UDC7F:~$ sh a27.sh wordFile.txt findFile.txt
#1
#Searching word: 'samsung' ...
