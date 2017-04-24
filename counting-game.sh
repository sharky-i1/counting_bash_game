#!/bin/sh
#bash script game
# 23.04.2017
#
kbroj=5

function game {
clear
count=$kbroj
rez=0
while [[ $count > 0 ]]; do
	broj=$(( ( RANDOM % 10 )  + 1 ))
	let rez=$rez+$broj
	echo $broj

	let count=$count-1

done

	echo "answer?"
	read answ

	if [[ $answ == $rez ]]; then
		echo ""
		echo $rez
		echo ""
		echo "**********************************"
		echo "*                                *"
		echo "*          *************         *"
		echo "*          *************         *"
		echo "*               ***              *"
		echo "*               ***              *"
		echo "*               ***              *"
		echo "*               ***              *"
		echo "*               ***              *"
		echo "*               ***              *"
		echo "*               $rez               *"
		echo "**********************************"
	else
		echo ""
		echo "**********************************"
		echo "*                                *"
		echo "*               ***              *"
		echo "*               ***              *"
		echo "*               ***              *"
		echo "*               ***              *"
		echo "*               ***              *"
		echo "*               ***              *"
		echo "*          *************         *"
		echo "*          *************         *"
		echo "*               $rez               *"
		echo "**********************************"
		echo ""

	fi

}


function options {
	echo "how many nuber you want to count?"
	read answ
	kbroj=$answ
	echo "seved!"
}

ggg=1
while [[ $ggg == 1 ]]; do
	echo "hello, chouse your options"
	echo ""
	echo "c - close"
	echo "o - chouse how meny number you want to count (now it is $kbroj)"
	echo "for play, press ENTER"
	echo ""
	read opet
	if [[ $opet == "c" ]]; then
		break
	elif [[ $opet == "o" ]]; then
		options	
	else
		game
	fi
done

