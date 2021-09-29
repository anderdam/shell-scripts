#!/bin/bash

# Display de UID and username of the user executing the script.
# Display if the user is the root or not

# Display the UID.
echo "Your UID is ${UID}"
# Display the username.
echo "Your username is ${USER}"
# Display if the user is the root or not.
echo "You are root? ${ISROOT}"
# Display if the user is a member of the sudo group
echo "You are in the sudo group? ${ISSUDO}"