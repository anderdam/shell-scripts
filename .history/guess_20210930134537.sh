#!/bin/bash

# if there is one argument
if [ $# -eq 1 ] ; then
    # generate a random number between 1 and the argument.
    # seed with the PID of the script
    RANDOM=$$

    # debug only
    ps
    # end debug

    #get a random number between 0 and $1 - 1 (inclusive)
    correct=$(( RANDOM % $1))
    # add one
    correct=$(( correct + 1 ))

    #set up initially incorrect guess
    guess=0

    # debug only
    echo "number is $correct"
    # end debug

    # a variable to count guesses
    count=0

    # get guesses from the user until they get it right

    while [ $guess -ne $correct ]; do
        # get a guess from the user
        echo "Guess my number (1 - $1) -> "
        read guess

        #count this guess:
        count=$(( count + 1))

        # if the guess is too high, too low or just right
        if [ $guess - gt $correct ]; then
            echo "Too high! Try again -> "
        elif [ $guess - lt $correct ]; then
            echo "Too low! Try again -> "
        else
            echo "You got it! It took you $count guesses"
        fi # end if
    done # end while
else
    echo "Usage: guess <num>, where the correct answer will be\n"
    echo "a random number in the range 1 ... num inclusive. \n\n"
    
fi # end if
