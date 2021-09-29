#!/bin/bash

# Display de UID and username of the user executing the script.
# Display if the user is the root or not

# Display the UID.
echo "Your UID is ${UID}"

# Display the username.
USER_NAME=$(id -un) # or $USER or whoami
echo "Your username is ${USER_NAME}"

# Display if the user is the root or not.
if [[ "${USER_NAME}" -eq 0 ]]; then
    echo "You are the root user."
else
    echo "You are not the root user."
fi


# Display if the user is a member of the sudo group
echo "You are in the sudo group? ${ISSUDO}"