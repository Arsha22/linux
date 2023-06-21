#!/bin/bash
if [ $# -eq 0 ]; then
  echo "Please provide a username as a command line argument."
  exit 1
fi
username=$1
output_file="login_details_${username}.txt"
last_login=$(lastlog -u "${username}" | sed -n '2p')
failed_logins=$(grep "sshd.*Failed password for $username" /var/log/auth.log)
echo "Last login details for user $username:" > "$output_file"
echo "$last_login" >> "$output_file"
echo "" >> "$output_file"
echo "Failed login attempts for user $username:" >> "$output_file"
echo "$failed_logins" >> "$output_file"
echo "Login details saved to $output_file."
