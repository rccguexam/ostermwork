#Write a Shell script  to generate summary from  a file “books.dat” which contains the following details :

#	Field             Description
#    ------------------------------------------------------------
#	No                Numeric (4) – uniquely identifies each book.
#	Title             Alphanumeric(30) – title of the book
#	Author            Character(20) – Author of the book
#	Publisher         Character(20) – Publisher (PHI , TMH, BPB…)
#	Edition           Numeric (2)

#	Sample Data:
#			b1001	Programming in Java	Balagurusway	TMH	Second
#			b1002	Computer Networks       Tanenbaum       Pearson Fifth
#			b1003	Operating Systems       Chaudhari       Jaico   First

#	After creating the file do the followings :
#		• Your script must replace all the BPB publisher with TMH.
#		• List the titles with the name ‘Java’.
#		• List the books written ‘Balaguruswamy
#		• List the books which are not the first edition


echo "File before modify"
cat "books.dat"

echo "File after modify"
cat "books.dat" | tr "TMH" "BPB"

echo "Books named as java"
grep "java" "books.dat" | cut -d " " -f2-4

echo "Books written by balagurusway are as follow:"
grep "Balagurusway"  books.dat | cut -d " " -f2-4

echo "Books which are not first edition:"
grep -v "First" "books.dat" | cut -d " " -f2-4

									
#OUTPUT
#File before modify
#b1001 Programming in java Balagurusway TMH Second
#b1002 Networks Tanenbaum Pearson Fifth
#b1003 Operating system Chaudhri Jaico First

#File after modify
#b1001 Programming in java Balagurusway BPB Second
#b1002 Networks Banenbaum Pearson Fifth
#b1003 Operating system Chaudhri Jaico First

#Books named as java
#Programming in java

#Books written by balagurusway are as follow:
#Programming in java

#Books which are not first edition:
#Programming in java
#Networks Tanenbaum Pearson
