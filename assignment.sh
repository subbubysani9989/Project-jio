#!/usr/bin/env bash
# File: guessinggame.sh

# Function to calculate the exact number of files in the current directory
get_file_count() {
    # Count only regular files, excluding directories and hidden files
    local count=$(find . -maxdepth 1 -type f | wc -l)
    echo "$count"
}

# Fetch the target number of files
target=$(get_file_count)

echo "Welcome to the Guessing Game!"
echo "Can you guess how many files are in the current directory?"

# Loop until the correct guess is made
while true; do
    read -p "Enter your guess: " guess

    # Check if the input is a valid positive integer
    if [[ ! "$guess" =~ ^[0-9]+$ ]]; then
        echo "Please enter a valid positive integer."
        continue
    fi

    # Compare the guess to the target
    if [[ "$guess" -lt "$target" ]]; then
        echo "Your guess is too low. Try again!"
    elif [[ "$guess" -gt "$target" ]]; then
        echo "Your guess is too high. Try again!"
    else
        echo "Congratulations! You guessed the correct number of files."
        break
    fi
done
