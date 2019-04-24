#!/bin/bash

source ./env_variables.sh
rm -rf $RELEASE_DIRECTORY/$VERSION_NUMBER/build/*
cp $JENKINS_WORKSPAGE/fdBrk/target/fdBrk-*.ear $RELEASE_DIRECTORY/$VERSION_NUMBER/build
find $JENKINS_WORKSPAGE/fdBrk/target/fdBrk-*/ -name '*.jar' -exec cp {} $RELEASE_DIRECTORY/$VERSION_NUMBER/build \;
find $JENKINS_WORKSPAGE/fdBrk/target/fdBrk-*/ -name '*.war' -exec cp {} $RELEASE_DIRECTORY/$VERSION_NUMBER/build \;
find $JENKINS_WORKSPAGE/ -name 'fdDbProcedures.zip' -exec cp {} $RELEASE_DIRECTORY/$VERSION_NUMBER/build \;
find $JENKINS_WORKSPAGE/ -name 'fdStatic.zip' -exec cp {} $RELEASE_DIRECTORY/$VERSION_NUMBER/build \;
find $JENKINS_WORKSPAGE/ -name 'fdTemplates.zip' -exec cp {} $RELEASE_DIRECTORY/$VERSION_NUMBER/build \;
find $JENKINS_WORKSPAGE/ -name 'fdxLib.zip' -exec cp {} $RELEASE_DIRECTORY/$VERSION_NUMBER/build \;
find $JENKINS_WORKSPAGE/ -name 'fdAppConfigs.zip' -exec cp {} $RELEASE_DIRECTORY/$VERSION_NUMBER/build \;
find $JENKINS_WORKSPAGE/fdBrk/target/ -name 'fdBrk-*.ear' -exec cp {} $RELEASE_DIRECTORY/$VERSION_NUMBER/build \;
find $JENKINS_WORKSPAGE/ -name 'PershingOrdersPollingEngine-*.jar' -exec cp {} $RELEASE_DIRECTORY/$VERSION_NUMBER/build \;
find $JENKINS_WORKSPAGE/ -name 'buildinfo.properties' -exec cp {} $RELEASE_DIRECTORY/$VERSION_NUMBER/build \;
find $JENKINS_WORKSPAGE/ -name 'buildInformation.xml' -exec cp {} $RELEASE_DIRECTORY/$VERSION_NUMBER/build \;
find $JENKINS_WORKSPAGE/ -name 'buildinfo.txt' -exec cp {} $RELEASE_DIRECTORY/$VERSION_NUMBER/build \;
find $JENKINS_WORKSPAGE/ -name 'preejb_fdBrk-*.ear' -exec cp {} $RELEASE_DIRECTORY/$VERSION_NUMBER/build \;

#Deploy Artifacts
if [ -f $RELEASE_DIRECTORY/$VERSION_NUMBER/LOCKFILE  ]; 
then echo "lockfile present"
rm -rf $RELEASE_DIRECTORY/$VERSION_NUMBER/LOCKFILE
else echo "lockfile not present"
fi

sudo -u wasadmin bash << EOF
cd /home/wasadmin/release
echo "-----------"
whoami
/home/wasadmin/bin/dyn_version/fdxDeployMaven.pl -r 8.2.1 -e dev3 -d
EOF

