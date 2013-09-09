#!/bin/bash
find `pwd` /. -name "*.cpp" >> list
find `pwd` /. -name "*.hpp" >> list
find `pwd` /. -name "*.c" >> list
find `pwd` /. -name "*.h" >> list
ctags -aBe --c++-kinds=+p --fields=+ialS --extra=+q -L list
cscope -beRUuq -i list
rm -f list
