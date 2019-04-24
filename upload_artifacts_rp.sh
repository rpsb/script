#mvn --settings conf/settings.xml --global-settings conf/settings.xml deploy -X -DaltDeploymentRepository=BrokerageRepository::default::http://10.20.40.165:8080/repository/BrokerageRepository/ -DrepositoryId=BrokerageRepository
source ./env_variables.sh
SETTINGS_DIR=/home/wasadmin/release/FB_821

cd $JENKINS_WORKSPAGE/fdBrokerage
SVN_REV=`svn info | grep "Revision" | awk '{print $2}'`
JAR_VERSION=$VERSION_NUMBER-$SVN_REV

#cp -f $SETTINGS_DIR/settings1.xml $JENKINS_WORKSPAGE/fdBrokerage/conf/settings.xml
#cp -f /home/wasadmin/release/jenkinsworkspace/FDX_BRN_DEV_8_2_4/fdStatic/build.xml $JENKINS_WORKSPAGE/fdStatic/build.xml

cd $JENKINS_WORKSPAGE/fdBrokerage/
mvn -fae --settings conf/settings.xml --global-settings conf/settings.xml clean deploy -DskipTests=true -Dmaven.install.skip=true -q -DaltDeploymentRepository=ump-staging-local::default::http://10.20.40.165:8080/repository/ump-staging-local/ -DrepositoryId=ump-staging-local

echo "**************************************"

mvn deploy:deploy-file   -DgroupId=com.fd.brokerage   -DartifactId=fdStatic   -Dversion=$JAR_VERSION   -Dpackaging=zip   -Dfile=$JENKINS_WORKSPAGE/fdStatic/target/fdStatic.zip   -DrepositoryId=ump-staging-local   -Durl=http://10.20.40.165:8080/repository/ump-staging-local/ -s conf/settings.xml --global-settings conf/settings.xml

echo "*****************************"
cd $SETTINGS_DIR

VERSION=$(head -n 1 build_version.txt)
count=`grep $VERSION build_version.txt | wc -l`
if [ $count -gt 0 ]
then
	echo "Duplicate Version"
	
else
	echo "Adding Version"
	if [ -f build_version.txt ]
	then
		echo $VERSION > deploy_versions.txt
	else
		echo $VERSION >> deploy_versions.txt
	fi
fi
