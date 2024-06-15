#! /bin/bash
insertdriver()
{
	sudo insmod ./modules/blkdd.ko
}

builddriver()
{
	if(make)
	then
		echo "Driver module build successful"
		echo
	else
		echo "Error: Driver build failure "
	fi
}

watchdriver()
{
	insmod 
	read
	dmesg
	read
	cat /proc/devices
	read
	cat /proc/modules
	read
}

removedriver()
{
	rmmod blkdd
}

makeclean()
{
	rm -f blkdd.mod
	rm -f moduless.order
	rm -f Modules.symbols
	rm -r modules
}

mainmenu()
{
	echo "Script: __Main menu___"
	echo "Script 1: Build driver"
	echo "Script 2: Insert driver"
	echo "Script 3: watch drivers"
	echo "Script 4: remove sriver"
	echo "Script 5: Clean"
	echo "Script 0: Exit script"
	read resp
	case $resp in 
		1)
			builddriver
			;;
		2)
			insertdriver
			;;
		3)
			watchdriver
			;;
		4)
			removedriver
			;;
		5)
			makeclean
			;;
		0)
			exit 0

	esac
}

while true
do
	mainmenu
done
