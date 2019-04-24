#Getting environment variables
source ./env_variables.sh

#Echo statements
echo "----- Build variables -----"
echo `java -version`
cd $JENKINS_WORKSPAGE/fdBrokerage
SVN_REV=`svn info | grep "Revision" | awk '{print $2}'`
LOCAL_REPO=`grep -oP '(?<=<localRepository>).*?(?=</localRepository>)' $SETTINGS_FILE`
echo "Release Version :"$VERSION_NUMBER
echo "SVN Revision Number : "$SVN_REV
JAR_VERSION=$VERSION_NUMBER-$SVN_REV
echo "Jar Version : "$JAR_VERSION
echo "Local Repository : "$LOCAL_REPO

#Dynamic Versioning
#--POM Changes--
#VERSION_NUMBER=8.2.1
cd $JENKINS_WORKSPAGE/fdBrokerage
SVN_REV=`svn info | grep "Revision" | awk '{print $2}'`
LOCAL_REPO=`grep -oP '(?<=<localRepository>).*?(?=</localRepository>)' $SETTINGS_FILE`
echo "Release Version :"$VERSION_NUMBER
echo "SVN Revision Number : "$SVN_REV
echo "Local Repository : "$LOCAL_REPO
#cleaning up brokerage repo before building
rm -rf $LOCAL_REPO/com/fd/brokerage
cp pom.xml temp_pom.xml
#dynamic versioning - adding release number - build number
sed 's/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.version>'$VERSION_NUMBER-$SVN_REV'<\/fdxlibraries.version>/ ; s/<scm.revision>[-[:alnum:]./]\{1,\}<\/scm.revision>/<scm.revision>'$SVN_REV'<\/scm.revision>/' temp_pom.xml > pom.xml
##--Application.xml Changes--
cd $JENKINS_WORKSPAGE/fdBrk/src/main/application/META-INF/
rm application.xml
svn update
cp application.xml application_tmp.xml
sed "s/0.0.1/$JAR_VERSION/" application_tmp.xml >application.xml
#--script change--
cd /home/wasadmin/bin/dyn_version/
rm fdxBuildDeployMaven.pm
cp ../fdxBuildDeployMaven.pm .
cp fdxBuildDeployMaven.pm fdxBuildDeployMaven.pm_bkp
sed "s/0.0.1/$JAR_VERSION/" fdxBuildDeployMaven.pm_bkp > fdxBuildDeployMaven.pm
rm fdxBuildDeployMaven.pm_bkp
#-------------DUMMY STEP------------------------
rm /home/wasadmin/release/jenkinsworkspace/Final_Brokerage_Build_8_2_1/fdDbProcedures/build.xml
cp /home/wasadmin/release/scripts/Final_Brokerage_Build_8_2_1/build.xml /home/wasadmin/release/jenkinsworkspace/Final_Brokerage_Build_8_2_1/fdDbProcedures/build.xml

#cleaning up brokerage repo before building
echo "----- Cleaning-up environment -----"
rm -rf $LOCAL_REPOcom/fd/brokerage
rm -rf $JENKINS_WORKSPAGE/fdStatic/fdStatic.zip
rm -rf $JENKINS_WORKSPAGE/fdxLib/fdxLib.zip
rm -rf $JENKINS_WORKSPAGE/fdWeb/fdTemplates.zip
rm -rf $JENKINS_WORKSPAGE/fdScriptsCda/fdAppConfigs.zip
rm -rf $JENKINS_WORKSPAGE/fdDbProcedures/fdDbProcedures.zip

#Maven Build
echo "----- Maven build started -----"
cd $JENKINS_WORKSPAGE/fdBrokerage/
mvn   -fae --settings conf/settings.xml --global-settings conf/settings.xml clean install -U antrun:run -DskipTests -q
echo "----- Maven build completed -----"
echo "----- DB Procedure -----"
cd $JENKINS_WORKSPAGE/fdDbProcedures/
mvn -fae --settings ../fdBrokerage/conf/settings.xml clean install -U antrun:run@default-cli -Dbrkbranch=$JENKINS_JOB -q
echo "----- fdxLib -----"
cd $JENKINS_WORKSPAGE/fdxLib/
mvn clean install -U antrun:run -fae -q
echo "----- fdScriptsCda -----"
cd $JENKINS_WORKSPAGE/fdScriptsCda/
mvn clean install -U antrun:run -fae -q
echo "-----  Maven build complete -----"

#EJB Deploy
echo "----- EJB Deployment Started -----"
cp $JENKINS_WORKSPAGE/fdBrk/target/fdBrk-$JAR_VERSION.ear $JENKINS_WORKSPAGE/fdBrk/target/preejb_fdBrk-$JAR_VERSION.ear
$EJB_DEPLOY/ejbdeploy.sh $EAR_DIR/preejb_fdBrk-$JAR_VERSION.ear /tmp/ $EAR_DIR/fdBrk-$JAR_VERSION.ear -cp $COMMON_LIB/log4j-core-2.8.2.jar:$COMMON_LIB/log4j-1.2-api-2.8.2.jar:$COMMON_LIB/log4j-api-2.8.2.jar:$UTIL_JAR/fdUtil-$JAR_VERSION.jar:$EXTERNAL_LIB/quickfixj-all-1.5.3.jar -nowarn

echo "----- EJB Deployment Complete -----"

if [ $? -ne 0 ]
then
        echo "Ejb Deploy failed"
        exit 0
fi

cp $EAR_DIR/fdBrk*/fdEJB-$JAR_VERSION.jar $JENKINS_WORKSPAGE/fdEJB/target/classes
cd $JENKINS_WORKSPAGE/fdEJB/target/classes

jar xf fdEJB-$JAR_VERSION.jar
if [ $? -ne 0 ]
then
        echo "EJB Stub step failed"
        exit 0
fi

echo "----- EJB Stub Validated Successfully -----"
echo "-- Copy Artifacts to Archiva --"
#sshpass -p 'archiva123' scp -r /fdx/FDX_MVN_REPO_8_2_2/com/fd/brokerage/* archiva@10.20.40.165:/fdx/softwares/apache-archiva-2.2.3/repositories/internal/com/fd/brokerage/
