#!/bin/bash
val=""

PASS="7532"
function Search(){
    echo "Enter directory name to Search"
    read FileName

    echo -ne "please wait*****\r"
    sleep 1
    echo -ne "please wait**********\r"
    $(echo $PASS | sudo -S find / -name $FileName -type d > paths.txt)
    val=$(cat paths.txt)
    if [ "$val" == "" ]
    then
    	return 0
    else
    	return 1
    fi
    
}

function Delete(){
    Search
    #Deletion
    
    if [ "$?" == 1 ]
    then

    for i in $val
    do
        $(rm -r $i)
    done
    echo "$(clear)Deleted from all locations"

    else
	echo file/directory is not exist
    fi
}


echo hello welcome!!!
while true
do
    echo -e "\nselect any one option from the below:\n\t1). Search a directory\n\t2). Delete a directory\n\t3). Exit"
    read option

    if [ $option == 1 ]
    then
        echo -ne "please wait***\r"
        sleep 1
        echo -ne "please wait******\r"
        sleep 2
        Search
        if [ "$?" == 1 ]
	    then
		    echo -e $(clear) "The locations are:\n"
		    for i in $val
		    do
		    	echo $i 
		    done
	    else
	    echo "File/Directory is not exsist"
	    fi

    elif [ $option == 2 ]
    then
        echo -ne "please wait***\r"
        sleep 1
        echo -ne "please wait******\r"
        sleep 2
        Delete
        exit
    elif [ $option == 3 ]
    then
        echo -ne "exiting***\r"
        sleep 1
        echo -ne "exiting******\r"
        sleep 2
        exit
    fi
done
