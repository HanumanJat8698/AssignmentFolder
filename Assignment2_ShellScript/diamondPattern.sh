#Please enter size of diamond using commandline!!
DISIZE=$1
if ! [[ "$DISIZE" =~ ^[0-9]+$ ]]
    then
        echo "Sorry integers only"
		exit
fi
HALFSIZE=`expr $DISIZE / 2 + 1`
LOOPVAR1=1
LOOPVAR2=1
LOOPVAR3=1
LOOPVAR4=1
while [ $LOOPVAR1 -le $HALFSIZE ]
	do
		while [ $HALFSIZE -gt $LOOPVAR3 ]
			do
				echo -n " "
				HALFSIZE=`expr $HALFSIZE - 1`
			done
		while [ $LOOPVAR2 -le $LOOPVAR4 ]
			do
				echo -n "*"
				LOOPVAR2=`expr $LOOPVAR2 + 1`
			done
		echo ""
		LOOPVAR2=1
		HALFSIZE=`expr $DISIZE / 2 + 1`
		LOOPVAR3=`expr $LOOPVAR3 + 1`
		LOOPVAR1=`expr $LOOPVAR1 + 1`
		LOOPVAR4=`expr $LOOPVAR4 + 2`
	done
HALFSIZE=`expr $DISIZE / 2`
LOOPVAR1=1
LOOPVAR3=1
LOOPVAR4=`expr $LOOPVAR4 - 4`
LOOPVAR2=$LOOPVAR4
while [ $LOOPVAR1 -le $HALFSIZE ]
	do
		while [ $LOOPVAR3 -le $LOOPVAR1 ]
			do
				echo -n " "
				LOOPVAR3=`expr $LOOPVAR3 + 1 `
			done
		while [ $LOOPVAR2 -ge 1 ]
			do
				echo -n "*"
				LOOPVAR2=`expr $LOOPVAR2 - 1`
			done
		echo ""
		LOOPVAR3=1
		LOOPVAR1=`expr $LOOPVAR1 + 1`
		LOOPVAR4=`expr $LOOPVAR4 - 2`
		LOOPVAR2=$LOOPVAR4
done