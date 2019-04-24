#!/bin/bash
source ./env_variables.sh
echo "----- Maven build started -----"
cd $JENKINS_WORKSPAGE/fdBrokerage/
pwd
mvn -pl '../fdUtil,../fdEJB,../fdWeb,../fdxObjectParser' test
