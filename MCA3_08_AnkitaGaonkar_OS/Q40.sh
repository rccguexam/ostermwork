# 40. Display the dates falling on Sundays of the current month.

stdate=$(date -d "`date +%Y%m01`" +%d-%b-%Y-%a)
edate=$(date -d "`date +%Y%m01` +1 month -1 day" +%d-%b-%Y-%a)

d=
n=0
until [ "$d" = "$eddate" ]
do  
    ((n++))
    d=$(date -d "$stdate + $n days" +%d-%b-%Y-%a)
    echo $d | grep "Sun"
done


# Output:

# 06-Dec-2020-Sun
# 13-Dec-2020-Sun
# 20-Dec-2020-Sun
# 27-Dec-2020-Sun
