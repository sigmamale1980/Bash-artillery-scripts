#!/bin/bash

# echo return function causing loop and fork.
# Only problem occurs with Syntax ``
# Example:

 	#function example() {
	#		echo `example`
	#}
#example

# Solution

	#FUNCNAME="$(declare -F | awk '{print $3}')"
	FUNCECHO="$(declare -f | grep -o "`.*`" | sed 's/[ \t].*$//g' | tr -d "`")"
	if [ $FUNCNAME == $FUNCECHO ]; then
		echo "Break fork function bomb"
		killall -9 $_
	fi

