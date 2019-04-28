function guessingame {

echo "           Welcome to The Guess In Game            "
echo "Please guess the number of files in this directory:"

n_files=$(ls | wc -l)

read response

while [[ $response -ne $n_files ]]
do

if [[ $response -lt $n_files ]]
then
	echo "Your guess is too low"
	echo "Guess Again!"
	read response
elif [[ $response -gt $n_files ]]
then 
	echo "Your guess is too high"
	echo "Guess Again!"
	read response
#else
#	echo "CONGRATS!"
#	echo "Your guess is correct"
#	echo "You guessed $response"
fi
done
echo "CONGRATS!"
echo "Your guess is correct"
echo "You guessed $response"
}

guessingame
