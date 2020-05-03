#!/bin/bash
POWERMODE=$(cpupower frequency-info --policy)

if [[ $POWERMODE == *""performance""* ]]; then
	echo OK
else 
	echo CPU is using Powersave Mode
	echo Switching to Performance Mode
	sudo cpupower frequency-set --governor performance
fi

