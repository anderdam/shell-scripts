#!/bin/bash

# Display de UID and username of the user executing the script.
# Display if the user is the root or not


USER_NAME=$(id -un) # or $USER or whoami

# Display the UID and Username.
function displayUserInfo() {
    echo "UID: $UID" # or 
    echo "Username: $USER"
    check_root
}

# Check if the user is root or not.
function check_root() {
    if [[ "${USER_NAME}" -eq 0 ]]; then
        echo "You are a root user."
    else
        echo "You are not a root user."
    fi
    
}

displayUserInfo