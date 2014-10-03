#!/bin/bash

#if [ $# -lt 1]; then
	#exit -1
#fi

find . -iname \* -exec grep --color -wn -H "$*" \{\} \;
