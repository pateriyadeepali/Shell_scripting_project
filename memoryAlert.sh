#!/bin/bash

memUsed=`free -m | head -2 | tail -1 | awk '{ print $3 }'`
TotalFreeMem=`free -m | head -2 | tail -1 | awk '{ print $2 }'`

memUsedPercentage=`expr $memUsed \* 100 / $TotalFreeMem`

echo -e "`date +"%r %D"`\t$memUsedPercentage" >> mem_report.tsv

if [[ $memUsedPercentage -ge 80 ]]
then
	echo "Security Alarm for memory" | espeak-ng
fi
