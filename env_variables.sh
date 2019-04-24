#Environment Variables
echo "----- Setting Environment Variables -----"
echo "Build Version" $BUILD_VERSION
BUILD_VERSION=8_2_1; export BUILD_VERSION
VERSION_NUMBER=8.2.1; export VERSION_NUMBER
JENKINS_JOB=Final_Brokerage_Build_8_2_1; export JENKINS_JOB
JENKINS_WORKSPAGE=/home/wasadmin/release/jenkinsworkspace/$JENKINS_JOB; export JENKINS_WORKSPAGE
SETTINGS_FILE=$JENKINS_WORKSPAGE/fdBrokerage/conf/settings.xml; export SETTINGS_FILE
RELEASE_DIRECTORY=/home/wasadmin/release/projects/fdx; export RELEASE_DIRECTORY
EJB_DEPLOY=/opt/IBM/WebSphere/AppServer/bin; export EJB_DEPLOY
COMMON_LIB=$JENKINS_WORKSPAGE/fdxLib/common; export COMMON_LIB
UTIL_JAR=$JENKINS_WORKSPAGE/fdUtil/target; export UTIL_JAR
EXTERNAL_LIB=/home/wasadmin/release/external/lib; export EXTERNAL_LIB
EAR_DIR=$JENKINS_WORKSPAGE/fdBrk/target; export EAR_DIR
SONAR_RESULT_FILE=/home/wasadmin/release/scripts/Final_Brokerage_Build_8_2_1/sonar-result.txt; export SONAR_RESULT_FILE

JAVA_HOME=/opt/IBM/WebSphere/AppServer/java_1.7_64; export JAVA_HOME
MVN_HOME=/home/wasadmin/release/apache-maven-3.5.2; export MVN_HOME
PATH=$PATH:$JAVA_HOME/bin/:$MVN_HOME/bin/; export PATH


#PATCH DEPLOYMENT Variables
EJB_PRE_EAR="preejb_fdEJB-*.jar"; export EJB_PRE_EAR
EAR_FILE="fdEJB-*.jar"; export EAR_FILE

FDX_BUILD_HOME=/home/wasadmin/release; export FDX_BUILD_HOME
FDX_RELEASE_HOME=$FDX_BUILD_HOME/projects/fdx; export FDX_RELEASE_HOME
CORE_SOURCE_DIR=$FDX_BUILD_HOME/projects/fdx/$RELEASE/source; export CORE_SOURCE_DIR
CORE_BUILD_DIR=$FDX_BUILD_HOME/projects/fdx/$RELEASE/build; export CORE_BUILD_DIR
MAVEN_REP=/fdx/FDX_MVN_REPO_8_2_1/com/fd/brokerage; export MAVEN_REP

JENKINS_JOB_URL=http://10.20.40.166:8080/job/Final_Brokerage_Build_8_2_1/lastSuccessfulBuild/buildNumber; export JENKINS_JOB_URL
