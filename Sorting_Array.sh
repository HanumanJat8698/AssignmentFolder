declare -a MYARRAY
MYARRAY=( "$@" )
if [ $# -eq 0 ]
    then
        echo "please pass value"
		exit
fi
for LOOPVAR in ${MYARRAY[*]}
do
	if ! [[ "$LOOPVAR" =~ ^[0-9]+$ ]]
		then
			echo "Sorry integers only"
			exit
	fi
done
EXTVAR=0
INTVAR=1
while [ $EXTVAR -lt $# ]
	do
		INTVAR=`expr $EXTVAR + 1`
		while [ $INTVAR -lt $# ]
			do
				if [ ${MYARRAY[$EXTVAR]} -gt ${MYARRAY[$INTVAR]} ]
					then
						#swapping
						TEMP=${MYARRAY[$INTVAR]}
						MYARRAY[$INTVAR]=${MYARRAY[$EXTVAR]}
						MYARRAY[$EXTVAR]=$TEMP
				fi
				INTVAR=`expr $INTVAR + 1`
			done
		EXTVAR=`expr $EXTVAR + 1`
	done
echo "Sorted Array :"
echo "${MYARRAY[*]}"
