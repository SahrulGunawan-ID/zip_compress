#!/bin/bash

# Function to generate random characters
generate_random() {
    local length=$1
    tr -dc 'A-Z0-9' </dev/urandom | head -c "$length" | tr -d '\n'
}

# Main script
total_length=50000
random_string=$(generate_random "$total_length")

# Save the random string to key.txt
echo -n "$random_string" > password.txt

# Output a message to indicate success
echo "Password Saved password.txt"