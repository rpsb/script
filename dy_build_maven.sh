#Getting environment variables
source ./env_variables.sh

#Echo statements
echo "----- Build variables -----"
echo `java -version`
cd $JENKINS_WORKSPAGE
SVN_REV=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
cd $JENKINS_WORKSPAGE/fdBrokerage
LOCAL_REPO=`grep -oP '(?<=<localRepository>).*?(?=</localRepository>)' $SETTINGS_FILE`
#SCRIPT_DIR=/home/wasadmin/release/scripts/Final_Brokerage_Build_8_2_1
#POM_DIR=$SCRIPT_DIR/pom
#POM_DIR=/home/wasadmin/release/scripts/Final_Brokerage_Build_8_2_1/manifest-pom/pom
echo "Release Version :"$VERSION_NUMBER
echo "SVN Revision Number : "$SVN_REV
JAR_VERSION=$VERSION_NUMBER-$SVN_REV
echo "Jar Version : "$JAR_VERSION
echo "Local Repository : "$LOCAL_REPO
echo $JAR_VERSION > $SCRIPT_DIR/build_version.txt

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
cd $JENKINS_WORKSPAGE/fdBrokerage
sed -i '0,/<version>/s/<version>[-[:alnum:]./]\{1,\}<\/version>/<version>'$JAR_VERSION'<\/version>/' pom.xml
sed -i 's/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.version>'$JAR_VERSION'<\/fdxlibraries.version>/' pom.xml
sed -i 's/<scm.revision>[-[:alnum:]./]\{1,\}<\/scm.revision>/<scm.revision>'$SVN_REV'<\/scm.revision>/' pom.xml

##--Application.xml Changes--
cd $JENKINS_WORKSPAGE/fdBrk/src/main/application/META-INF/
#rm application.xml
#svn update
#cp application.xml application_tmp.xml
sed -i 's/AFixOrderProcessor-0.0.1.jar/AFixOrderProcessor-'$JAR_VERSION'.jar/' application.xml
sed -i 's/APartialAllocationProcess-0.0.1.jar/APartialAllocationProcess-'$JAR_VERSION'.jar/' application.xml
sed -i 's/FDwsWeb-0.0.1.war/FDwsWeb-'$JAR_VERSION'.war/' application.xml
sed -i 's/fdAppClients-0.0.1.jar/fdAppClients-'$JAR_VERSION'.jar/' application.xml
sed -i 's/fdBenchMarksClient-0.0.1.jar/fdBenchMarksClient-'$JAR_VERSION'.jar/' application.xml
sed -i 's/fdBillingClients-0.0.1.jar/fdBillingClients-'$JAR_VERSION'.jar/' application.xml
sed -i 's/fdBulkAllocationProcess-0.0.1.jar/fdBulkAllocationProcess-'$JAR_VERSION'.jar/' application.xml
sed -i 's/fdDynamicModelClient-0.0.1.jar/fdDynamicModelClient-'$JAR_VERSION'.jar/' application.xml
sed -i 's/fdEJB-0.0.1.jar/fdEJB-'$JAR_VERSION'.jar/' application.xml
sed -i 's/fdOrderExpirationProcess-0.0.1.jar/fdOrderExpirationProcess-'$JAR_VERSION'.jar/' application.xml
sed -i 's/fdPendingTransactionPerformance-0.0.1.jar/fdPendingTransactionPerformance-'$JAR_VERSION'.jar/' application.xml
sed -i 's/fdPerformanceClient-0.0.1.jar/fdPerformanceClient-'$JAR_VERSION'.jar/' application.xml
sed -i 's/fdPeriodicFundTransfers-0.0.1.jar/fdPeriodicFundTransfers-'$JAR_VERSION'.jar/' application.xml
sed -i 's/fdProcessFixMessages-0.0.1.jar/fdProcessFixMessages-'$JAR_VERSION'.jar/' application.xml
sed -i 's/fdSecurityAllocationModelFileUploader-0.0.1.jar/fdSecurityAllocationModelFileUploader-'$JAR_VERSION'.jar/' application.xml
sed -i 's/fdSlvBalAdjustment-0.0.1.jar/fdSlvBalAdjustment-'$JAR_VERSION'.jar/' application.xml
sed -i 's/fdTaxLotsAppClient-0.0.1.jar/fdTaxLotsAppClient-'$JAR_VERSION'.jar/' application.xml
sed -i 's/fdTradeExceptionSweeper-0.0.1.jar/fdTradeExceptionSweeper-'$JAR_VERSION'.jar/' application.xml
sed -i 's/fdTransactionAllocationProcess-0.0.1.jar/fdTransactionAllocationProcess-'$JAR_VERSION'.jar/' application.xml
sed -i 's/fdUser-0.0.1.jar/fdUser-'$JAR_VERSION'.jar/' application.xml
sed -i 's/fdWashSaleProcess-0.0.1.jar/fdWashSaleProcess-'$JAR_VERSION'.jar/' application.xml
sed -i 's/fdWeb-0.0.1.war/fdWeb-'$JAR_VERSION'.war/' application.xml
sed -i 's/fdSSO-0.0.1.war/fdSSO-'$JAR_VERSION'.war/' application.xml
sed -i 's/wsWeb-0.0.1.war/wsWeb-'$JAR_VERSION'.war/' application.xml
sed -i 's/BustOrderProcessor-0.0.1.jar/BustOrderProcessor-'$JAR_VERSION'.jar/' application.xml
sed -i 's/MFOrderSweeper-0.0.1.jar/MFOrderSweeper-'$JAR_VERSION'.jar/' application.xml
sed -i 's/fdBlendUpdate-0.0.1.jar/fdBlendUpdate-'$JAR_VERSION'.jar/' application.xml
sed -i 's/fixAllocationEngine-0.0.1.jar/fixAllocationEngine-'$JAR_VERSION'.jar/' application.xml
sed -i 's/CustodianOrderProcessor-0.0.1.jar/CustodianOrderProcessor-'$JAR_VERSION'.jar/' application.xml

#--script change--
#cd /home/wasadmin/bin/dyn_version/
#rm fdxBuildDeployMaven.pm
#cp ../fdxBuildDeployMaven.pm .
#cp fdxBuildDeployMaven.pm fdxBuildDeployMaven.pm_bkp
#sed "s/0.0.1/$JAR_VERSION/" fdxBuildDeployMaven.pm_bkp > fdxBuildDeployMaven.pm
#rm fdxBuildDeployMaven.pm_bkp

#-------------DUMMY STEP------------------------
rm $JENKINS_WORKSPAGE/fdDbProcedures/build.xml
cp /home/wasadmin/release/scripts/Final_Brokerage_Build_8_2_1/build.xml $JENKINS_WORKSPAGE/fdDbProcedures/build.xml

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
mvn   -fae --settings conf/settings.xml --global-settings conf/settings.xml clean install -U antrun:run -DskipTests 
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
# creating JAR_VERSION.txt

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

cp $EAR_DIR/fdBrk*/fdEJB-*.jar $JENKINS_WORKSPAGE/fdEJB/target/classes
cd $JENKINS_WORKSPAGE/fdEJB/target/classes

jar xf fdEJB-*.jar
if [ $? -ne 0 ]
then
        echo "EJB Stub step failed"
        exit 0
fi

