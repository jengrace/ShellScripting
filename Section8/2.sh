# Modify the previous script so that it uses a logging function. Additionally tag each syslog
# message with "randomly" and include the process ID. Generate 3 random numbers.

#! /bin/bash

#RANDOM_NUM=$RANDOM
#echo "$RANDOM_NUM"

#logger -s -p user.info "$RANDOM_NUM"

#logger -i -s -t randomly user.info "$RANDOM_NUM"

#Jul 23 12:59:42 Jennifers-MacBook-Air.local randomly[46556] <Notice>: user.info 18463



function logging () {
	local RANDOM_NUM=$@
	echo "$RANDOM_NUM"
	logger -i -s -t randomly -p user.info "$RANDOM_NUM"	
}

logging "Random number: $RANDOM"
logging "Random number: $RANDOM"
logging "Random number: $RANDOM"