o "Sundays in current month are:"

echo " ----- Using AWK ----- "
cal | awk 'FNR > 2{print $1}'

#output

#neel@NeelRana:/mnt/e/ROLWALA/sem-3/o.s/practicles$ sh s_s_40.sh
#s_s_40.sh: 1: o: not found
# ----- Using AWK -----
# 1
# 6
# 13
# 20
# 27
