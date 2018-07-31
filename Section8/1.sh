# Write a shell script that displays one random number to the screen and also generates a syslog
# message with that random number. Use the "user" facility and the "info" facility for your
# messages

#! /bin/bash

RANDOM_NUM=$RANDOM
echo "$RANDOM_NUM"

logger -s -p user.info "$RANDOM_NUM"