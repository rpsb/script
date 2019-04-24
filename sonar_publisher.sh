#!/bin/bash
source ./env_variables.sh


SLEEP_INTERVAL=30
INPROGRESS_STATUS='"status": "IN_PROGRESS",'
SUCCESS_STATUS='"status": "SUCCESS",'

SONAR_BLOCKER_API=http://10.11.100.130:9003/api/issues/search?pageSize=1&severities=BLOCKER&projectKeys=testing&resolved=false
SONAR_CRITICAL_API=http://10.11.100.130:9003/api/issues/search?pageSize=1&severities=CRITICAL&projectKeys=testing&resolved=false
SONAR_MAJOR_API=http://10.11.100.130:9003/api/issues/search?pageSize=1&severities=MAJOR&projectKeys=testing&resolved=false

#JENKINS_WORKSPAGE=/home/wasadmin/release/jenkinsworkspace/Test
flag=1
#Check if Sonar Report is present
if [ -f "$JENKINS_WORKSPAGE/.sonar/report-task.txt" ]
then
	while [ $flag -eq 1 ]
	do
		#Get TaskURL from the Sonar Report and get Status of the Scanning Task
		cd $JENKINS_WORKSPAGE/.sonar
		task_url=$(grep -m1 "ceTaskUrl" report-task.txt | cut -d '=' --complement -s -f1)
		status=$(curl -s $task_url | python -mjson.tool | grep status)
		#Trim whitespaces from variable status
		status_trim=$(echo -e "${status}" | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')
		if [ "$INPROGRESS_STATUS" != "$status_trim" ]
		then
			flag=0
			if [ "$SUCCESS_STATUS" == "$status_trim" ]
			then
				echo "SUCCESS: Fetching SONAR Results"
				cur_blocker=$(curl -sb -H "Accept: application/json" "http://10.11.100.130:9003/api/issues/search?pageSize=1&severities=BLOCKER&projectKeys=testing&resolved=false" | python -c "import sys, json; print json.load(sys.stdin)['total']")
				cur_critical=$(curl -sb -H "Accept: application/json" "http://10.11.100.130:9003/api/issues/search?pageSize=1&severities=CRITICAL&projectKeys=testing&resolved=false" | python -c "import sys, json; print json.load(sys.stdin)['total']")
				cur_major=$(curl -sb -H "Accept: application/json" "http://10.11.100.130:9003/api/issues/search?pageSize=1&severities=MAJOR&projectKeys=testing&resolved=false" | python -c "import sys, json; print json.load(sys.stdin)['total']")

				echo "SONAR: Current Blocker Issues :" $cur_blocker
				echo "SONAR: Current Critical Issues :" $cur_critical
				echo "SONAR: Current Major Issues :" $cur_major

				if [ -f "$SONAR_RESULT_FILE" ]
				then
					cat -e $SONAR_RESULT_FILE
					string=$(tail -1 $SONAR_RESULT_FILE)
					x=(${string//:/ })

					echo "SONAR: Previous Blocker Issues :" ${x[0]}
					echo "SONAR: Previous Critical Issues :" ${x[1]}
					echo "SONAR: Previous Major Issues :" ${x[2]}

					if [ "$cur_blocker" -le "${x[0]}" ] && [ "$cur_critical" -le "${x[1]}" ] && [ "$cur_major" -le "${x[2]}" ]
					then
						echo "SONAR SUCCESS: Bugs are less than equal to previous build - Setting new basevalue"
						echo "#BLOCKER:CRITICAL:MAJOR" >$SONAR_RESULT_FILE
						echo "$cur_blocker:$cur_critical:$cur_major" >>$SONAR_RESULT_FILE
					else
						echo "Blockers have exceeded the previous build"
						exit 1
					fi

				else
					echo "SONAR : First RUN Setting new result base values"
					echo -e  "#BLOCKER:CRITICAL:MAJOR" >$SONAR_RESULT_FILE
					echo -e  "$cur_blocker:$cur_critical:$cur_major" >>$SONAR_RESULT_FILE
				fi
			else
				echo "SONAR FAILURE: SONAR PUBLISH FAILED"
			fi
		else
			sleep $SLEEP_INTERVAL
			echo "SONAR: Publishing Results..."
		fi
	
	done
else
	echo "ERROR: Sonar Report is not generated/Present in $JENKINS_WORKSPAGE"
fi
