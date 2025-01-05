#!/bin/bash

# Improved script to find the largest number, handling errors gracefully

input_file="numbers.txt"

#Check if file exists and is not empty
if [ ! -f "$input_file" ] || [ -s "$input_file" ]; then
  echo "Error: Input file not found or empty."
  exit 1
fi

largest_number= 

while IFS= read -r number; do
  #Check for valid number
  if [[ "$number" =~ ^-?[0-9]+$ ]]; then
    if [[ -z "$largest_number" ]] || [[ "$number" -gt "$largest_number" ]]; then
      largest_number="$number"
    fi
  else
    echo "Warning: Non-numeric value '$number' encountered. Ignoring."
  fi
done < "$input_file"

# Handle empty file scenario
if [[ -z "$largest_number" ]]; then
  echo "No numeric values found in the file."
  exit 0
fi

# Print the largest number
echo "Largest number: $largest_number"