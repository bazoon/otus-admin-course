#!/bin/bash

# Define the email parameters
subject="Log report"
to="root@system.com"
from="watch.sh@system.com"

# Capture the output of your script into a variable
output=$(./send.sh)

# Use the mail command to send the email with the output as the body
echo -e "Subject:$subject\n\n$output" | sendmail -f $from $to
