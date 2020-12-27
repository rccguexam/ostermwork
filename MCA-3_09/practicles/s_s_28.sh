#! /bin/bash
# =========================================================================
# sed '/foo/d' deleteFromFile.txt

#  the substring foo inside the foobar string is also replaced. 
# If this is not the wanted behavior, use the word-boundary expression (\b)
# at both ends of the search string.
# This ensures the partial words are not matched.

# =========================================================================

word="UNIX"

# Read all args
for i
do
	# I is for Insensitive
	# d is for delete
	# I must be written first
	sed -i "/\b$word\b/Id" $1
done

#Output:

#neel@NeelRana:/mnt/e/ROLWALA/sem-3/o.s/practicles$ vi s_s_28.sh
#neel@NeelRana:/mnt/e/ROLWALA/sem-3/o.s/practicles$ sh s_s_28.sh unix.txt
#neel@NeelRana:/mnt/e/ROLWALA/sem-3/o.s/practicles$ cat unix.txt
#hello
#neel@NeelRana:/mnt/e/ROLWALA/sem-3/o.s/practicles$ vi unix.txt
#neel@NeelRana:/mnt/e/ROLWALA/sem-3/o.s/practicles$ cat unix.txt
#hello
#unix is the best
#i love linux
#unix is my favourite os
#neel@NeelRana:/mnt/e/ROLWALA/sem-3/o.s/practicles$ sh s_s_28.sh unix.txt
#neel@NeelRana:/mnt/e/ROLWALA/sem-3/o.s/practicles$ cat unix.txt
#hello
#i love linux
#neel@NeelRana:/mnt/e/ROLWALA/sem-3/o.s/practicles$

