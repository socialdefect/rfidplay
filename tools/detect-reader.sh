#!/bin/bash

clear
echo 'Disconnect your RFID reader and press Enter.'
read ENTER

ls /dev/ > /tmp/1

echo && echo 'Now connect your reader and press Enter.'

read ENTER

ls /dev/ > /tmp/2

echo && echo "Your RFID device is /dev/`diff /tmp/1 /tmp/2 | grep tty | tr -d '> '`"
echo

exit $?
