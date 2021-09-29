#!/bin/bash

# Display de UID and username of the user executing the script.
# Display if the user is the root or not

# Display the UID and Username.
function displayUserInfo() {
    echo "UID: $UID"
    echo "Username: $USER"
    check_root
}

#echo "Your UID is ${UID}"


#USER_NAME=$(id -un) # or $USER or whoami
#echo "Your username is ${USER_NAME}"

# Display if the user is the root or not.
#if [[ "${USER_NAME}" -eq 0 ]]; then
 #   echo "You are the root user."
#else
  #  echo "You are not the root user."
#fi

function check_root() {
    if [[ "${USER_NAME}" -eq 0 ]]; then
        echo "You are the root user."
    fi
    echo "You are not the root user."
}
displayUserInfo