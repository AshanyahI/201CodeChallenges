#!/bin/bash

# Script: Ops 201 Class 05 Ops Challenge Solution
# Author: Ashanyah Israel
# Date of latest revision: 2/16/23
# Purpose: 
#Write a script that displays running processes, asks the user for a PID, then kills the process with that PID.
#Use a loop in your script.#


# Main

#EXPLAINATION:
#The script first uses the ps command to get a list of running processes and saves the output to the running_processes variable. It then uses echo to print the list to the console.
#The script then uses read to ask the user to enter a PID to kill and saves the input to the pid_to_kill variable. It uses a while loop to keep asking for a valid PID until the user enters a valid integer. The regular expression ^[0-9]+$ is used to check that the input consists of one or more digits.
#Finally, the script uses the kill command to send a SIGTERM signal to the process with the given PID. If the process is successfully killed, a message is printed to the console. If there's an error, an error message is printed instead.

#!/bin/bash
# Get a list of running processes
running_processes=$(ps -A)

# Print the running processes to the console
echo "Running processes:"
echo "$running_processes"

# Ask the user for a PID to kill
read -p "Enter the PID of the process to kill: " pid_to_kill

# Loop until a valid PID is entered
while ! [[ "$pid_to_kill" =~ ^[0-9]+$ ]]; do
    read -p "Invalid input. Please enter a valid PID: " pid_to_kill
done

# Try to kill the process with the given PID
if kill "$pid_to_kill"; then
    echo "Process with PID $pid_to_kill has been killed."
else
    echo "Unable to kill process with PID $pid_to_kill."
fi

# End





