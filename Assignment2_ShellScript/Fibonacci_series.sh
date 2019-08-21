#Enter input using command line only!!
INVAR=$1
VAR1=0
VAR2=1
TEMPVAR=1
if ! [[ "$INVAR" =~ ^[0-9]+$ ]]
    then
        echo "Sorry integers only"
		exit
fi
if [ $INVAR -le 0 ]
	then 
		echo "please enter integer and above 0 value"
		exit 0
fi
while [ $TEMPVAR -le $INVAR ]
	do
		if [ $TEMPVAR -eq 1 ]
			then 
				echo -n "$VAR1 "
		elif [ $TEMPVAR -eq 2 ]
			then
				echo -n "$VAR2 "
		else
			VAR2=`expr $VAR1 + $VAR2`
			VAR1=`expr $VAR2 - $VAR1`
			echo -n "$VAR2 "
		fi
		TEMPVAR=`expr $TEMPVAR + 1`
	done
