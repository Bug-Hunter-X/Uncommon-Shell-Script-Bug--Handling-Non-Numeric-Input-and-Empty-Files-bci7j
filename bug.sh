#!/bin/bash

# This script attempts to find the largest number in a file, but contains a subtle bug.

# Input file (replace with your actual file path)
input_file="numbers.txt"

# Initialize largest number to a very small value
largest_number=-999999999

# Read each number from the file
while IFS= read -r number; do
  # Check if the current number is larger than the largest number found so far
  if [[ "$number" -gt "$largest_number" ]]; then
    # Update the largest number
    largest_number="$number"
  fi
  #Check for non-numeric values
  if [[ ! "$number" =~ ^-?[0-9]+$ ]]; then
      echo "Error: Non-numeric value encountered: $number"
      exit 1
  fi
done < "$input_file"

# Print the largest number
echo "Largest number: $largest_number"