#!/bin/bash
	seconds=$(echo $1 | awk -F: '{ print ($1 * 3600) + ($2 * 60) + $3 }')
	echo $seconds  $1

	currentTime=`date +"%H:%M"`
	currtime=$(echo $currentTime | awk -F: '{ print ($1 * 3600) + ($2 * 60) + $3 }')
	echo $currtime $currentTime 
	echo seconds[@] is ${seconds[i]}

        echo  ${seconds[i]}-$currtime
        sleep $(( ${seconds[i]}-$currtime ))s

        currentTime=`date +"%H:%M"`
        currtime=$(echo $currentTime | awk -F: '{ print ($1 * 3600) + ($2 * 60) + $3 }')
        echo $currtime $currentTime
		
        echo "$currtime" "${seconds[i]}"
        if [ "$currtime" -ge "${seconds[i]}" ]
        then
                        echo $currtime is greater than or equal to ${seconds[i]}
			/fdx/softwares/deploy.sh
					

	fi
