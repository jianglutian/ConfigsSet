#!/bin/bash

if [ $# -lt 1]; then
	exit -1
fi

find . -iname \*.[ch] -exec grep --color -wn -H "$*" \{\} \;
find . -iname \*.cpp -exec grep --color -wn -H "$*" \{\} \;
find . -iname \*.hpp -exec grep --color -wn -H "$*" \{\} \;
find . -iname \*.lua -exec grep --color -wn -H "$*" \{\} \;
#find . -iname \*.xml -exec grep --color -wn -H "$*" \{\} \;
