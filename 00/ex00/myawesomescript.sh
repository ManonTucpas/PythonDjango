#!/bin/bash

#   '$1' is the first argument the bit.ly address
#   echo $1

#   option 's' tells to curl to be silent -> it'll not print the download progress
#   option 'I' download only the HTTP header
#   grep to get the header line that have redirection URL in 'Location'

response=$(curl -sI $1 | grep -i Location)

# Print the variable response which is the website address
echo "${response}"