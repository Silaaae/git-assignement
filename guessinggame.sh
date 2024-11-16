filenum=$(ls | wc -l)


function guess_filenum {
    read -p "Guess how many files are in the current directory: " guess
    if [[ $guess -eq $filenum ]]
    then
        echo "You finally guessed it!"
        echo "So we have ..."
        for f in $(ls)
        do
            echo "  - $f"
        done
        echo "... and that was it."
    else
        if [[ $guess -gt $filenum ]]
        then
            echo "Too high! Try again."
            guess_filenum
        else
            echo "Too low! Try again."
            guess_filenum
        fi
    fi
}

echo "Welcome to the Guessing Game!"
guess_filenum
