#!/bin/bash

# Check if a username is provided as a command line argument
if [ $# -eq 0 ]; then
  echo "Please provide a username as a command line argument."
  exit 1
fi

username=$1
output_file="login_details_${username}.txt"

# Extract last login details
last_login=$(lastlog -u "$username" | sed -n '2p')

# Extract failed login attempts
failed_logins=$(grep "sshd.*Failed password for $username" /var/log/auth.log)

# Store the results in the output file
echo "Last login details for user $username:" > "$output_file"
echo "$last_login" >> "$output_file"
echo "" >> "$output_file"
echo "Failed login attempts for user $username:" >> "$output_file"
echo "$failed_logins" >> "$output_file"

echo "Login details saved to $output_file."

OUTPUT

Last login details for user username:
[The last login details of the specified user]

Failed login attempts for user username:
[The list of failed login attempts for the specified user]
