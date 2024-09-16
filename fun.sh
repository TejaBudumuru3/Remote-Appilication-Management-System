#!/bin/bash/sudo bash

SignRoot(){

while true
do
	echo "you need to be login as root user[y/n]"
	read root
	if [ $root -eq Y -o $root -eq y ]
	then
		$(sudo -i)

	elif [ $root -eq n -o $root -eq N ]
	then
		echo "Sorry you cant use this service without root user"
		exit
	fi
done
}

Crack(){


sleep 1
echo -n "starting the service * * *\r"
sleep 1
echo -n "starting the service * * * * * *\r"
sleep 1

$(sudo wifite --kill)
exit

}



Retreive(){

sleep 1
echo -n "retreiving the file * * *\r"
sleep 1
echo -n "retreiving the file * * * * * *\r"
sleep 1
$(sudo grep "essid\|psk" /home/hp/cracked.json >> copy.txt)
$(sudo cat /home/hp/copy.txt)
exit
}


while true
do
echo  "Welcome \n1.Do you want to crack a Wi-Fi?\n2.Retreive existing cracked psk."
read option
if [ $option -eq 1 ]; then
	echo -n "please wait...\r"
	sleep 1
	echo -n "please wait......\r"
	sleep 2
	Crack
elif [ $option -eq 2 ]; then
	echo -n "please wait...\r"
	sleep 1
	echo -n "please wait......\r"
	sleep 2
	Retreive
fi



done
