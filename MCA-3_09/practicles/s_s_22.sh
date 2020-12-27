
 # all files in a directory  whose sizes exceed 1000.
 # The filenames should be printed in the descending order of their sizes.
 # The total no. of files must be reported.

 #! /bin/bash
 ls --sort=size -l | awk '$5 >= 1000 {print $5,$9}'

#output

# neel@NeelRana:/mnt/e/ROLWALA/sem-3/o.s/practicles$ sh s_s_22.sh
# 151552 which
# 4096 mydir
# 1994 s_s_17.sh
# 1650 s_s_16.sh
# neel@NeelRana:/mnt/e/ROLWALA/sem-3/o.s/practicles$
