#! /bin/bash


#function:

insApp(){
	echo -e "Enter application name to install\n"
	read appName
	echo "getting ready to install"
	echo application: $appName
	echo -ne "please wait...\r"
	sleep 1
	echo -ne "please wait......\r"
	sleep 1
	echo "installation process has been started"
	$(sudo apt update)
	$(sudo apt install $appName)
}

uninsApp(){
	echo -e "Enter application name to install\n"
	read appName
	echo "retriving the files....\r"
	echo grep
	echo -ne "please wait...\r"
	sleep 1
	echo -ne "please wait......\r"
	sleep 1
	echo "uninstallation process has been started"
	echo -ne "please wait...\r"
	sleep 1
	echo -ne "please wait......\r"
	sleep 1
	echo $appName uninstalled!!
}
echo -e "hello welcome!!!\nselect any one option from the below:\n\t1). install an application\n\t2). uninstall an application"

read option
if [ $option == 1 ]
then
	echo -ne "please wait...\r"
	sleep 1
	echo -ne "please wait......\r"
	sleep 2
	insApp
elif [ $option == 2 ]
	then
	uninsApp

fi
