#please input using command line only!!
INVAR=$1
LOOPVAR=2
COUNTVAR=0
if ! [[ "$INVAR" =~ ^[0-9]+$ ]]
    then
        echo "Sorry integers only"
		exit
fi
if [ $INVAR -lt 2 ]
	then
		echo "Number is not prime"
else
	while [ $LOOPVAR -lt $INVAR ]
		do
			TEMPVAR=`expr $INVAR % $LOOPVAR`
			if [ $TEMPVAR == 0 ]
				then
					COUNTVAR=`expr $COUNTVAR + 1`
			fi
			LOOPVAR=`expr $LOOPVAR + 1`
		done
		if [ $COUNTVAR -eq 0 ]
			then
				echo "Prime"
		else
			echo "Not Prime"
		fi
fi