#mvn --settings conf/settings.xml --global-settings conf/settings.xml deploy -X -DaltDeploymentRepository=BrokerageRepository::default::http://10.20.40.165:8080/repository/BrokerageRepository/ -DrepositoryId=BrokerageRepository
source ./env_variables.sh
cd $JENKINS_WORKSPAGE/fdBrokerage/
mvn   -fae --settings conf/settings.xml --global-settings conf/settings.xml deploy -DskipTests=true -Dmaven.install.skip=true -q -DaltDeploymentRepository=ump-snapshot-local::default::http://10.20.40.165:8080/repository/BrokerageRepository/ -DrepositoryId=BrokerageRepository -pl '!../fdStatic'

VERSION=$(head -n 1 build_version.txt)
count=`grep $VERSION build_version.txt | wc -l`
if [ $count -gt 0 ]
then
	echo "Duplicate Version"
	
else
	echo "Adding Version"
	if [ -f versions.txt ]
	then
		echo $VERSION > deploy_versions.txt
	else
		echo $VERSION >> deploy_versions.txt
	fi
fi
