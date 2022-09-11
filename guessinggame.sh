function prompt {
	echo "Guess how many files are in the current directory:"
}

num_files=$(ls -l | grep "^-" | wc -l)
response=-1

while [[ $response -ne $num_files ]]
do
	prompt
	read response

	if [[ response -eq $num_files ]]
	then
		echo "You guessed correctly, it is $num_files!"
	elif [[ response -lt $num_files ]]
	then
		echo "Your guess is too low."
	else
		echo "Your guess is too high."
	fi
done
