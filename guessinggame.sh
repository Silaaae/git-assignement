filenum=$(ls | wc -l)

function guess_filenum {
	read guess
	if [[ $guess -eq $filenum ]]
	then
		echo " You finally guessd it"
		echo "  So we have ..."
		for f in $(ls)
		do
			echo "  - $f and "
		done
		echo "    ... and that was it."
	else
		if [[ $guess -gt $filenum ]]
		then
			echo "There is less press Enter :"
			guess_filenum
		else
			echo "There is more press Enter :"
			guess_filenum
		fi
	fi
}

guess_filenum
