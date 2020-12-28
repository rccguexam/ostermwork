#A reputed MCA institute of Gujarat has students from various states. A sample file “students.dat” is shown as under :

#	State               M         F
#	-----------------------------------
#	Gujarat             18        12
#	Maharashtra         12        04
#	M.P.                08        04
#	U.P.                05        00
#	Rajasthan           07        00

#   Total Male candidates are 50 and Female are 20. Write a shell script to generate a Statewise Candidate Distribution
#   Report as under :

#        	                     STATEWISE CANDIDATES LISTING
#	      ----------------------------------------------------------------------------------------
  #           		STATE                %MALE              %FEMALE           TOTAL
#	      ----------------------------------------------------------------------------------------
  #           		GUJARAT               36                  60               30
#             		MAHARASHTRA           24                  20               16
#			……………………………… and so on …………………………………..




echo "	            STATEWISE CANDIDATES LISTING             "
echo "-------------------------------------------------------"
echo "  State      %Male            %Female             Total"
echo "-------------------------------------------------------"

while read line
do
        set $line
        mper=`expr $2 \* 100 / 50`
        fper=`expr $3 \* 100 / 20`

        echo "$1        $mper       $fper       `expr $2 + $3` "

done < "candidate.dat"
									
#OUTPUT

#              StateWise Candidate Listing
#----------------------------------------------------
 # State      %Male            %Female       Total
#----------------------------------------------------
#Gujarat        36           	60           30
#Maharastra     24       	20           16
#M.P.           16       	20           12
#UP             10                0            5
#Rajasthan      14       	 0            7
