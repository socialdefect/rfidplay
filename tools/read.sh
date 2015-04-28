#!/bin/bash

READER=/dev/ttyUSB0
READID=0
SPEED=2400

	sleep 1
	stty -F $READER speed $SPEED raw cs8 &>/dev/null
	stty -F $READER speed $SPEED raw cs8 &>/dev/null
echo 'This script will read RFID tags and echo their ID on the screen.'
echo 'Change the variables in the script to set the reader and speed.'
echo

while true ;
	do
		echo 'Hold a tag near the reader or press [Ctrl] + C to Quit.'
		READID=`dd status=noxfer if=$READER bs=1 count=11 2>/dev/null`

		echo && echo "Tag ID = $READID" && echo && READID=0
		sleep 3
	done

