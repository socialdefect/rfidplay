#!/bin/sh
## This file can be used as a template to set up a simple loop that reads tags and executes a 
command or script

READER=/dev/ttyUSB0
READID=0

	sleep 1
	stty -F $READER speed $SPEED raw cs8
	stty -F $READER speed $SPEED raw cs8

while true ;
	do
		READID=`dd if=$READER bs=1 count=11` 

	if [ $READID = READID_HERE ] ;
		then
			COMMAND_HERE && READID=0  
			sleep 3     	  
	fi

done

