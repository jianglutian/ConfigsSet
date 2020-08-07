#!/bin/bash

if [ $# -ne 2 ] ; then
    echo "Invalid parameters count($#) when compare version."
    exit 0
fi

CurrentVersion=$1
TargetVersion=$2

declare -i Result=0
declare -i CheckVersionIndex=1
declare -i FirstNumber=`echo $CurrentVersion | cut -d. -f$CheckVersionIndex`
declare -i SecondNumber=`echo $TargetVersion | cut -d. -f$CheckVersionIndex`
while [[ $FirstNumber != 0 ]]
do
    if [[ $FirstNumber -gt $SecondNumber ]]; then
        Result=1
        break
    elif [[ $FirstNumber -le $SecondNumber ]]; then
        Result=2
        break
    else
        CheckVersionIndex=$CheckVersionIndex+1
        declare -i FirstNumber=`echo $CurrentVersion | cut -d. -f$CheckVersionIndex`
        declare -i SecondNumber=`echo $TargetVersion | cut -d. -f$CheckVersionIndex`
    fi
done

exit $Result
