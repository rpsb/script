#Getting environment variables
source ./env_variables.sh

#Echo statements
echo "----- Build variables -----"
echo `java -version`
cd $JENKINS_WORKSPAGE/fdBrokerage
SVN_REV=`svn info | grep "Revision" | awk '{print $2}'`
LOCAL_REPO=`grep -oP '(?<=<localRepository>).*?(?=</localRepository>)' $SETTINGS_FILE`
SCRIPT_DIR=/home/wasadmin/release/scripts/Final_Brokerage_Build_8_2_1
POM_DIR=$SCRIPT_DIR/manifest-pom
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
cd $JENKINS_WORKSPAGE/fdBrokerage

#cp $POM_DIR/fdBrokerage-pom.xml $JENKINS_WORKSPAGE/fdBrokerage/pom.xml

#cp pom.xml temp_pom.xml

#dynamic versioning - adding release number - build number


sed -i 's/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.version>'$JAR_VERSION'<\/fdxlibraries.version>/' pom.xml
sed -i 's/<scm.revision>[-[:alnum:]./]\{1,\}<\/scm.revision>/<scm.revision>'$SVN_REV'<\/scm.revision>/' pom.xml

#cp $POM_DIR/fdxObjectParser-pom.xml $JENKINS_WORKSPAGE/fdxObjectParser/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdxObjectParser/pom.xml

#cp $POM_DIR/fdxUnitTesting-pom.xml $JENKINS_WORKSPAGE/fdxUnitTesting/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdxUnitTesting/pom.xml

#cp $POM_DIR/fdUtil-pom.xml $JENKINS_WORKSPAGE/fdUtil/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdUtil/pom.xml

#cp $POM_DIR/fdQuote-pom.xml $JENKINS_WORKSPAGE/fdQuote/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdQuote/pom.xml

#cp $POM_DIR/fdPerformanceAccrual-pom.xml $JENKINS_WORKSPAGE/fdPerformanceAccrual/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdPerformanceAccrual/pom.xml

#cp $POM_DIR/fdEJB-pom.xml $JENKINS_WORKSPAGE/fdEJB/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdEJB/pom.xml

#cp $POM_DIR/fdPershingBulkOrder-pom.xml $JENKINS_WORKSPAGE/fdPershingBulkOrder/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdPershingBulkOrder/pom.xml

#cp $POM_DIR/fdLPLPreTrade-pom.xml $JENKINS_WORKSPAGE/fdLPLPreTrade/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdLPLPreTrade/pom.xml

#cp $POM_DIR/fdOrderVerifyCompliance-pom.xml $JENKINS_WORKSPAGE/fdOrderVerifyCompliance/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdOrderVerifyCompliance/pom.xml

#cp $POM_DIR/fdAppClients-pom.xml $JENKINS_WORKSPAGE/fdAppClients/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdAppClients/pom.xml

#cp $POM_DIR/fdPershingCrossTrading-pom.xml $JENKINS_WORKSPAGE/fdPershingCrossTrading/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdPershingCrossTrading/pom.xml

#cp $POM_DIR/fdBroadridgeWS-pom.xml $JENKINS_WORKSPAGE/fdBroadridgeWS/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdBroadridgeWS/pom.xml

#cp $POM_DIR/perOrdersPollEngine-pom.xml $JENKINS_WORKSPAGE/perOrdersPollEngine/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/perOrdersPollEngine/pom.xml

#cp $POM_DIR/fdPershingOrderProcessing-pom.xml $JENKINS_WORKSPAGE/fdPershingOrderProcessing/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdPershingOrderProcessing/pom.xml

#cp $POM_DIR/AFixOrderProcessor-pom.xml $JENKINS_WORKSPAGE/AFixOrderProcessor/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/AFixOrderProcessor/pom.xml

#cp $POM_DIR/APartialAllocationProcess-pom.xml $JENKINS_WORKSPAGE/APartialAllocationProcess/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/APartialAllocationProcess/pom.xml

#cp $POM_DIR/BustOrderProcessor-pom.xml $JENKINS_WORKSPAGE/BustOrderProcessor/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/BustOrderProcessor/pom.xml

#cp $POM_DIR/CustodianOrderProcessor-pom.xml $JENKINS_WORKSPAGE/CustodianOrderProcessor/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/CustodianOrderProcessor/pom.xml

#cp $POM_DIR/fdBenchMarksClient-pom.xml $JENKINS_WORKSPAGE/fdBenchMarksClient/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdBenchMarksClient/pom.xml

#cp $POM_DIR/fdBillingClients-pom.xml $JENKINS_WORKSPAGE/fdBillingClients/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdBillingClients/pom.xml

#cp $POM_DIR/fdBlendUpdate-pom.xml $JENKINS_WORKSPAGE/fdBlendUpdate/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/'  $JENKINS_WORKSPAGE/fdBlendUpdate/pom.xml

#cp $POM_DIR/fdBulkAllocationProcess-pom.xml $JENKINS_WORKSPAGE/fdBulkAllocationProcess/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdBulkAllocationProcess/pom.xml

#cp $POM_DIR/fdDynamicModelClient-pom.xml $JENKINS_WORKSPAGE/fdDynamicModelClient/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdDynamicModelClient/pom.xml

#cp $POM_DIR/fdOrderExpirationProcess-pom.xml $JENKINS_WORKSPAGE/fdOrderExpirationProcess/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdOrderExpirationProcess/pom.xml

#cp $POM_DIR/fdPendingTransactionPerformance-pom.xml $JENKINS_WORKSPAGE/fdPendingTransactionPerformance/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdPendingTransactionPerformance/pom.xml

#cp $POM_DIR/fdPerformanceClient-pom.xml $JENKINS_WORKSPAGE/fdPerformanceClient/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdPerformanceClient/pom.xml

#cp $POM_DIR/fdPeriodicFundTransfers-pom.xml $JENKINS_WORKSPAGE/fdPeriodicFundTransfers/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdPeriodicFundTransfers/pom.xml

#cp $POM_DIR/fdProcessFixMessages-pom.xml $JENKINS_WORKSPAGE/fdProcessFixMessages/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdProcessFixMessages/pom.xml

#cp $POM_DIR/MFOrderSweeper-pom.xml $JENKINS_WORKSPAGE/MFOrderSweeper/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/MFOrderSweeper/pom.xml

#cp $POM_DIR/fdSecurityAllocationModelFileUploader-pom.xml $JENKINS_WORKSPAGE/fdSecurityAllocationModelFileUploader/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdSecurityAllocationModelFileUploader/pom.xml

#cp $POM_DIR/fdSlvBalAdjustment-pom.xml $JENKINS_WORKSPAGE/fdSlvBalAdjustment/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdSlvBalAdjustment/pom.xml

#cp $POM_DIR/fdTaxLotsAppClient-pom.xml $JENKINS_WORKSPAGE/fdTaxLotsAppClient/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdTaxLotsAppClient/pom.xml

#cp $POM_DIR/fdTradeExceptionSweeper-pom.xml $JENKINS_WORKSPAGE/fdTradeExceptionSweeper/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdTradeExceptionSweeper/pom.xml

#cp $POM_DIR/fdTransactionAllocationProcess-pom.xml $JENKINS_WORKSPAGE/fdTransactionAllocationProcess/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdTransactionAllocationProcess/pom.xml

#cp $POM_DIR/fdWashSaleProcess-pom.xml $JENKINS_WORKSPAGE/fdWashSaleProcess/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdWashSaleProcess/pom.xml

#cp $POM_DIR/fixAllocationEngine-pom.xml $JENKINS_WORKSPAGE/fixAllocationEngine/pom.xml 
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fixAllocationEngine/pom.xml

#cp $POM_DIR/wsWeb-pom.xml $JENKINS_WORKSPAGE/wsWeb/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/wsWeb/pom.xml

#cp $POM_DIR/fdSSO-pom.xml $JENKINS_WORKSPAGE/fdSSO/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdSSO/pom.xml

#cp $POM_DIR/fdWeb-pom.xml $JENKINS_WORKSPAGE/fdWeb/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdWeb/pom.xml

#cp $POM_DIR/FDwsWeb-pom.xml $JENKINS_WORKSPAGE/FDwsWeb/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/FDwsWeb/pom.xml

#cp $POM_DIR/fdUser-pom.xml $JENKINS_WORKSPAGE/fdUser/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdUser/pom.xml

#cp $POM_DIR/fdOrderStub-pom.xml $JENKINS_WORKSPAGE/fdOrderStub/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdOrderStub/pom.xml

##--Application.xml Changes--
cd $JENKINS_WORKSPAGE/fdBrk/src/main/application/META-INF/
#rm application.xml
#svn update
cp $POM_DIR/application.xml application.xml
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
sed -i 's/fdUtil-0.0.1.jar/fdUtil-'$JAR_VERSION'.jar/' application.xml
#--script change--
cd /home/wasadmin/bin/dyn_version/
rm fdxBuildDeployMaven.pm
cp ../fdxBuildDeployMaven.pm .
cp fdxBuildDeployMaven.pm fdxBuildDeployMaven.pm_bkp
sed "s/0.0.1/$JAR_VERSION/" fdxBuildDeployMaven.pm_bkp > fdxBuildDeployMaven.pm
rm fdxBuildDeployMaven.pm_bkp
#-------------DUMMY STEP------------------------
rm $JENKINS_WORKSPAGE/fdDbProcedures/build.xml
cp $SCRIPT_DIR/build.xml $JENKINS_WORKSPAGE/fdDbProcedures/build.xml

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

#EJB Deploy
echo "----- EJB Deployment Started -----"
#cp $JENKINS_WORKSPAGE/fdBrk/target/fdBrk-$JAR_VERSION.ear $JENKINS_WORKSPAGE/fdBrk/target/preejb_fdBrk-$JAR_VERSION.ear
#$EJB_DEPLOY/ejbdeploy.sh $EAR_DIR/preejb_fdBrk-$JAR_VERSION.ear /tmp/ $EAR_DIR/fdBrk-$JAR_VERSION.ear -cp $COMMON_LIB/log4j-core-2.8.2.jar:$COMMON_LIB/log4j-1.2-api-2.8.2.jar:$COMMON_LIB/log4j-api-2.8.2.jar:$UTIL_JAR/fdUtil-$JAR_VERSION.jar:$EXTERNAL_LIB/quickfixj-all-1.5.3.jar -nowarn

cp $JENKINS_WORKSPAGE/fdBrk/target/fdBrk-$JAR_VERSION.ear $JENKINS_WORKSPAGE/fdBrk/target/preejb_fdBrk-$JAR_VERSION.ear

#$EJB_DEPLOY/ejbdeploy.sh $EAR_DIR/preejb_fdBrk-$JAR_VERSION.ear /tmp/ $EAR_DIR/fdBrk-$JAR_VERSION.ear -cp $COMMON_LIB/log4j-core-2.8.2.jar:$COMMON_LIB/log4j-1.2-api-2.8.2.jar:$COMMON_LIB/log4j-api-2.8.2.jar:$UTIL_JAR/fdUtil-$FU_VERSION.jar:$EXTERNAL_LIB/quickfixj-all-1.5.3.jar -nowarn

echo "----------------------------------------------"
ls -ltr $JENKINS_WORKSPAGE/fdPerformanceAccrual/target/fdPerformanceAccrual-$JAR_VERSION*
echo "----------------------------------------------"
ls -ltr $JENKINS_WORKSPAGE/fdQuote/target/fdQuote-$JAR_VERSION*
echo "----------------------------------------------"
ls -ltr $UTIL_JAR/fdUtil-$JAR_VERSION.jar
echo "----------------------------------------------"

$EJB_DEPLOY/ejbdeploy.sh $EAR_DIR/preejb_fdBrk-$JAR_VERSION.ear /tmp/ $EAR_DIR/fdBrk-$JAR_VERSION.ear -cp $COMMON_LIB/log4j-core-2.8.2.jar:$COMMON_LIB/log4j-1.2-api-2.8.2.jar:$COMMON_LIB/log4j-api-2.8.2.jar:$UTIL_JAR/fdUtil-$JAR_VERSION.jar:/home/wasadmin/release/jenkinsworkspace/Final_Brokerage_Build_8_2_1/fdPerformanceAccrual/target/fdPerformanceAccrual-$JAR_VERSION.jar:/home/wasadmin/release/jenkinsworkspace/Final_Brokerage_Build_8_2_1/fdQuote/target/fdQuote-$JAR_VERSION.jar:$EXTERNAL_LIB/quickfixj-all-1.5.3.jar -nowarn

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

