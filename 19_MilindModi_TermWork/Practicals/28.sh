# 28. Write a shell script which deletes all the lines containing the word "unix" in the files   
# supplied as arguments to it.

word="joker"
for i in *; do
    sed -i "/\b$word\b/Id" $i
done
 
# dummy.txt:my name is JOKER

