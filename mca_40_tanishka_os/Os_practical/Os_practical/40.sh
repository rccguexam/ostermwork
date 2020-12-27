#40. Display the dates falling on Sundays of the current month.

startdate=$(date -d "-0 month -$(($(date +%d)-1)) days" +%d-%b-%Y-%a)
enddate=$(date -d "-$(date +%d) days +1 month" +%d-%b-%Y-%a)

d=
n=0
until [ "$d" = "$enddate" ]
do  
    ((n++))
    d=$(date -d "$startdate + $n days" +%d-%b-%Y-%a)
    echo $d | grep "Sun"
done


#Output:
#13-Dec-2020-Sun                                                                                                                               
#20-Dec-2020-Sun                                                                                                                               
#27-Dec-2020-Sun