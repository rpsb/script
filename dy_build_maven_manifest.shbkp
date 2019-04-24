#Getting environment variables
source ./env_variables.sh

#Echo statements
echo "----- Build variables -----"
echo `java -version`
cd $JENKINS_WORKSPAGE/fdBrokerage
SVN_REV=`svn info | grep "Revision" | awk '{print $2}'`
LOCAL_REPO=`grep -oP '(?<=<localRepository>).*?(?=</localRepository>)' $SETTINGS_FILE`
SCRIPT_DIR=/home/wasadmin/release/scripts/Final_Brokerage_Build_8_2_1
POM_DIR=$SCRIPT_DIR/pom
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
#versioning
cd $JENKINS_WORKSPAGE/fdxObjectParser
OP_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
echo "OP_VERSION : $OP_VERSION"
 
cd $JENKINS_WORKSPAGE/fdxUnitTesting
UT_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
echo "UT_VERSION : $UT_VERSION"

cd $JENKINS_WORKSPAGE/fdUtil
FU_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
echo "FU_VERSION : $FU_VERSION"

cd $JENKINS_WORKSPAGE/fdQuote
FQ_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
echo "FQ_VERSION : $FQ_VERSION"

cd $JENKINS_WORKSPAGE/fdPerformanceAccrual
PA_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
echo "PA_VERSION : $PA_VERSION"

cd $JENKINS_WORKSPAGE/fdEJB
FE_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
echo "FE_VERSION : $FE_VERSION"

cd $JENKINS_WORKSPAGE/fdPershingBulkOrder
BO_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
echo "BO_VERSION : $BO_VERSION"

cd $JENKINS_WORKSPAGE/fdLPLPreTrade
PT_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
echo "PT_VERSION : $PT_VERSION"

cd $JENKINS_WORKSPAGE/fdOrderVerifyCompliance
VC_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
echo "VC_VERSION : $VC_VERSION"

cd $JENKINS_WORKSPAGE/fdAppClients
AC_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
echo "AC_VERSION : $AC_VERSION"

cd $JENKINS_WORKSPAGE/fdPershingCrossTrading
CT_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
echo "CT_VERSION : $CT_VERSION"

cd $JENKINS_WORKSPAGE/fdBroadridgeWS
BW_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
echo "BW_VERSION : $BW_VERSION"

cd $JENKINS_WORKSPAGE/perOrdersPollEngine
PE_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
echo "PE_VERSION : $PE_VERSION"

cd $JENKINS_WORKSPAGE/fdPershingOrderProcessing
PO_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
echo "PO_VERSION : $PO_VERSION"

cd $JENKINS_WORKSPAGE/AFixOrderProcessor
AF_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
echo "AF_VERSION : $AF_VERSION"

cd $JENKINS_WORKSPAGE/APartialAllocationProcess
AP_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
echo "AP_VERSION : $AP_VERSION"

cd $JENKINS_WORKSPAGE/BustOrderProcessor
BP_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
echo "BP_VERSION : $BP_VERSION"

cd $JENKINS_WORKSPAGE/CustodianOrderProcessor
CO_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
echo "CO_VERSION : $CO_VERSION"

cd $JENKINS_WORKSPAGE/fdBenchMarksClient
BC_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
echo "BC_VERSION : $BC_VERSION"

cd $JENKINS_WORKSPAGE/fdBillingClients
FB_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
echo "FB_VERSION : $FB_VERSION"

cd $JENKINS_WORKSPAGE/fdBlendUpdate
BU_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
echo "BU_VERSION : $BU_VERSION"

cd $JENKINS_WORKSPAGE/fdBulkAllocationProcess
BA_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
echo "BA_VERSION : $BA_VERSION"

cd $JENKINS_WORKSPAGE/fdDynamicModelClient
DM_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
echo "DM_VERSION : $DM_VERSION"

cd $JENKINS_WORKSPAGE/fdOrderExpirationProcess
EP_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
echo "EP_VERSION : $EP_VERSION"

cd $JENKINS_WORKSPAGE/fdPendingTransactionPerformance
TP_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
echo "TP_VERSION : $TP_VERSION"

cd $JENKINS_WORKSPAGE/fdPerformanceClient
FP_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
echo "FP_VERSION : $FP_VERSION"

cd $JENKINS_WORKSPAGE/fdPeriodicFundTransfers
FT_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
echo "FT_VERSION : $FT_VERSION"

cd $JENKINS_WORKSPAGE/fdProcessFixMessages
PF_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
echo "PF_VERSION : $PF_VERSION"

cd $JENKINS_WORKSPAGE/MFOrderSweeper
MF_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
echo "MF_VERSION : $MF_VERSION"

cd $JENKINS_WORKSPAGE/fdSecurityAllocationModelFileUploader
SA_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
echo "SA_VERSION : $SA_VERSION"

cd $JENKINS_WORKSPAGE/fdSlvBalAdjustment
SL_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
echo "SL_VERSION : $SL_VERSION"

cd $JENKINS_WORKSPAGE/fdTaxLotsAppClient
TL_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
echo "TL_VERSION : $TL_VERSION"

cd $JENKINS_WORKSPAGE/fdTradeExceptionSweeper
TE_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
echo "TE_VERSION : $TE_VERSION"

cd $JENKINS_WORKSPAGE/fdTransactionAllocationProcess
FA_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
echo "FA_VERSION : $FA_VERSION"

cd $JENKINS_WORKSPAGE/fdWashSaleProcess
WS_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
echo "WS_VERSION : $WS_VERSION"

cd $JENKINS_WORKSPAGE/fixAllocationEngine
AE_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
echo "AE_VERSION : $AE_VERSION"

cd $JENKINS_WORKSPAGE/wsWeb
WW_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
echo "WW_VERSION : $WW_VERSION"

cd $JENKINS_WORKSPAGE/fdSSO
SS_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
echo "SS_VERSION : $SS_VERSION"

cd $JENKINS_WORKSPAGE/fdWeb
WE_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
echo "WE_VERSION : $WE_VERSION"

cd $JENKINS_WORKSPAGE/FDwsWeb
EB_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
echo "EB_VERSION : $EB_VERSION"

cd $JENKINS_WORKSPAGE/fdUser
US_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
echo "US_VERSION : $US_VERSION"

cd $JENKINS_WORKSPAGE/fdEJB
EJ_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
echo "EJ_VERSION : $EJ_VERSION"

cd $JENKINS_WORKSPAGE/fdOrderStub
OS_VERSION=`svn info | grep "Last Changed Rev" | awk '{print $4}'`
echo "OS_VERSION : $OS_VERSION"

#cleaning up brokerage repo before building
rm -rf $LOCAL_REPO/com/fd/brokerage
cd $JENKINS_WORKSPAGE/fdBrokerage

cp $POM_DIR/fdBrokerage-pom.xml $JENKINS_WORKSPAGE/fdBrokerage/pom.xml

cp pom.xml temp_pom.xml

#dynamic versioning - adding release number - build number
#sed 's/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.version>'$VERSION_NUMBER-$SVN_REV'<\/fdxlibraries.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.op.version>'$VERSION_NUMBER-$OP_VERSION'<\/fdxlibraries.op.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.ut.version>'$VERSION_NUMBER-$UT_VERSION'<\/fdxlibraries.ut.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.fu.version>'$VERSION_NUMBER-$FU_VERSION'<\/fdxlibraries.fu.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.fq.version>'$VERSION_NUMBER-$FQ_VERSION'<\/fdxlibraries.fq.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.pa.version>'$VERSION_NUMBER-$PA_VERSION'<\/fdxlibraries.pa.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.fe.version>'$VERSION_NUMBER-$FE_VERSION'<\/fdxlibraries.fe.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.bo.version>'$VERSION_NUMBER-$BO_VERSION'<\/fdxlibraries.bo.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.pt.version>'$VERSION_NUMBER-$PT_VERSION'<\/fdxlibraries.pt.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.vc.version>'$VERSION_NUMBER-$VC_VERSION'<\/fdxlibraries.vc.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.ac.version>'$VERSION_NUMBER-$AC_VERSION'<\/fdxlibraries.ac.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.ct.version>'$VERSION_NUMBER-$CT_VERSION'<\/fdxlibraries.ct.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.bw.version>'$VERSION_NUMBER-$BW_VERSION'<\/fdxlibraries.bw.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.pe.version>'$VERSION_NUMBER-$PE_VERSION'<\/fdxlibraries.pe.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.po.version>'$VERSION_NUMBER-$PO_VERSION'<\/fdxlibraries.po.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.af.version>'$VERSION_NUMBER-$AF_VERSION'<\/fdxlibraries.af.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.ap.version>'$VERSION_NUMBER-$AP_VERSION'<\/fdxlibraries.ap.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.bp.version>'$VERSION_NUMBER-$BP_VERSION'<\/fdxlibraries.bp.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.co.version>'$VERSION_NUMBER-$CO_VERSION'<\/fdxlibraries.co.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.bc.version>'$VERSION_NUMBER-$BC_VERSION'<\/fdxlibraries.bc.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.fb.version>'$VERSION_NUMBER-$FB_VERSION'<\/fdxlibraries.fb.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.bu.version>'$VERSION_NUMBER-$BU_VERSION'<\/fdxlibraries.bu.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.ba.version>'$VERSION_NUMBER-$BA_VERSION'<\/fdxlibraries.ba.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.dm.version>'$VERSION_NUMBER-$DM_VERSION'<\/fdxlibraries.dm.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.ep.version>'$VERSION_NUMBER-$EP_VERSION'<\/fdxlibraries.ep.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.tp.version>'$VERSION_NUMBER-$TP_VERSION'<\/fdxlibraries.tp.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.fp.version>'$VERSION_NUMBER-$FP_VERSION'<\/fdxlibraries.fp.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.ft.version>'$VERSION_NUMBER-$FT_VERSION'<\/fdxlibraries.ft.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.pf.version>'$VERSION_NUMBER-$PF_VERSION'<\/fdxlibraries.pf.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.mf.version>'$VERSION_NUMBER-$MF_VERSION'<\/fdxlibraries.mf.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.sa.version>'$VERSION_NUMBER-$SA_VERSION'<\/fdxlibraries.sa.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.sl.version>'$VERSION_NUMBER-$SL_VERSION'<\/fdxlibraries.sl.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.tl.version>'$VERSION_NUMBER-$TL_VERSION'<\/fdxlibraries.tl.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.te.version>'$VERSION_NUMBER-$TE_VERSION'<\/fdxlibraries.te.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.fa.version>'$VERSION_NUMBER-$FA_VERSION'<\/fdxlibraries.fa.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.ws.version>'$VERSION_NUMBER-$WS_VERSION'<\/fdxlibraries.ws.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.ae.version>'$VERSION_NUMBER-$AE_VERSION'<\/fdxlibraries.ae.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.ww.version>'$VERSION_NUMBER-$WW_VERSION'<\/fdxlibraries.ww.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.ss.version>'$VERSION_NUMBER-$SS_VERSION'<\/fdxlibraries.ss.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.we.version>'$VERSION_NUMBER-$WE_VERSION'<\/fdxlibraries.we.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.eb.version>'$VERSION_NUMBER-$EB_VERSION'<\/fdxlibraries.eb.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.us.version>'$VERSION_NUMBER-$US_VERSION'<\/fdxlibraries.us.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.ej.version>'$VERSION_NUMBER-$EJ_VERSION'<\/fdxlibraries.ej.version>/ ; s/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.os.version>'$VERSION_NUMBER-$OS_VERSION'<\/fdxlibraries.os.version>/ ; s/<scm.revision>[-[:alnum:]./]\{1,\}<\/scm.revision>/<scm.revision>'$SVN_REV'<\/scm.revision>/' temp_pom.xml > pom.xml


sed -i 's/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.version>'$VERSION_NUMBER-$SVN_REV'<\/fdxlibraries.version>/' pom.xml
sed -i 's/<fdxlibraries.op.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.op.version>/<fdxlibraries.op.version>'$VERSION_NUMBER-$OP_VERSION'<\/fdxlibraries.op.version>/' pom.xml
sed -i 's/<fdxlibraries.ut.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.ut.version>/<fdxlibraries.ut.version>'$VERSION_NUMBER-$UT_VERSION'<\/fdxlibraries.ut.version>/' pom.xml
sed -i 's/<fdxlibraries.fu.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.fu.version>/<fdxlibraries.fu.version>'$VERSION_NUMBER-$FU_VERSION'<\/fdxlibraries.fu.version>/' pom.xml
sed -i 's/<fdxlibraries.fq.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.fq.version>/<fdxlibraries.fq.version>'$VERSION_NUMBER-$FQ_VERSION'<\/fdxlibraries.fq.version>/' pom.xml
sed -i 's/<fdxlibraries.pa.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.pa.version>/<fdxlibraries.pa.version>'$VERSION_NUMBER-$PA_VERSION'<\/fdxlibraries.pa.version>/' pom.xml
sed -i 's/<fdxlibraries.fe.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.fe.version>/<fdxlibraries.fe.version>'$VERSION_NUMBER-$FE_VERSION'<\/fdxlibraries.fe.version>/' pom.xml
sed -i 's/<fdxlibraries.bo.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.bo.version>/<fdxlibraries.bo.version>'$VERSION_NUMBER-$BO_VERSION'<\/fdxlibraries.bo.version>/' pom.xml
sed -i 's/<fdxlibraries.pt.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.pt.version>/<fdxlibraries.pt.version>'$VERSION_NUMBER-$PT_VERSION'<\/fdxlibraries.pt.version>/' pom.xml
sed -i 's/<fdxlibraries.vc.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.vc.version>/<fdxlibraries.vc.version>'$VERSION_NUMBER-$VC_VERSION'<\/fdxlibraries.vc.version>/' pom.xml
sed -i 's/<fdxlibraries.ac.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.ac.version>/<fdxlibraries.ac.version>'$VERSION_NUMBER-$AC_VERSION'<\/fdxlibraries.ac.version>/' pom.xml
sed -i 's/<fdxlibraries.ct.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.ct.version>/<fdxlibraries.ct.version>'$VERSION_NUMBER-$CT_VERSION'<\/fdxlibraries.ct.version>/' pom.xml
sed -i 's/<fdxlibraries.bw.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.bw.version>/<fdxlibraries.bw.version>'$VERSION_NUMBER-$BW_VERSION'<\/fdxlibraries.bw.version>/' pom.xml
sed -i 's/<fdxlibraries.pe.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.pe.version>/<fdxlibraries.pe.version>'$VERSION_NUMBER-$PE_VERSION'<\/fdxlibraries.pe.version>/' pom.xml
sed -i 's/<fdxlibraries.po.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.po.version>/<fdxlibraries.po.version>'$VERSION_NUMBER-$PO_VERSION'<\/fdxlibraries.po.version>/' pom.xml
sed -i 's/<fdxlibraries.af.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.af.version>/<fdxlibraries.af.version>'$VERSION_NUMBER-$AF_VERSION'<\/fdxlibraries.af.version>/' pom.xml
sed -i 's/<fdxlibraries.ap.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.ap.version>/<fdxlibraries.ap.version>'$VERSION_NUMBER-$AP_VERSION'<\/fdxlibraries.ap.version>/' pom.xml
sed -i 's/<fdxlibraries.bp.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.bp.version>/<fdxlibraries.bp.version>'$VERSION_NUMBER-$BP_VERSION'<\/fdxlibraries.bp.version>/' pom.xml
sed -i 's/<fdxlibraries.co.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.co.version>/<fdxlibraries.co.version>'$VERSION_NUMBER-$CO_VERSION'<\/fdxlibraries.co.version>/' pom.xml
sed -i 's/<fdxlibraries.bc.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.bc.version>/<fdxlibraries.bc.version>'$VERSION_NUMBER-$BC_VERSION'<\/fdxlibraries.bc.version>/' pom.xml
sed -i 's/<fdxlibraries.fb.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.fb.version>/<fdxlibraries.fb.version>'$VERSION_NUMBER-$FB_VERSION'<\/fdxlibraries.fb.version>/' pom.xml
sed -i 's/<fdxlibraries.bu.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.bu.version>/<fdxlibraries.bu.version>'$VERSION_NUMBER-$BU_VERSION'<\/fdxlibraries.bu.version>/' pom.xml
sed -i 's/<fdxlibraries.ba.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.ba.version>/<fdxlibraries.ba.version>'$VERSION_NUMBER-$BA_VERSION'<\/fdxlibraries.ba.version>/' pom.xml
sed -i 's/<fdxlibraries.dm.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.dm.version>/<fdxlibraries.dm.version>'$VERSION_NUMBER-$DM_VERSION'<\/fdxlibraries.dm.version>/' pom.xml
sed -i 's/<fdxlibraries.ep.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.ep.version>/<fdxlibraries.ep.version>'$VERSION_NUMBER-$EP_VERSION'<\/fdxlibraries.ep.version>/' pom.xml
sed -i 's/<fdxlibraries.tp.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.tp.version>/<fdxlibraries.tp.version>'$VERSION_NUMBER-$TP_VERSION'<\/fdxlibraries.tp.version>/' pom.xml
sed -i 's/<fdxlibraries.fp.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.fp.version>/<fdxlibraries.fp.version>'$VERSION_NUMBER-$FP_VERSION'<\/fdxlibraries.fp.version>/' pom.xml
sed -i 's/<fdxlibraries.ft.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.ft.version>/<fdxlibraries.ft.version>'$VERSION_NUMBER-$FT_VERSION'<\/fdxlibraries.ft.version>/' pom.xml
sed -i 's/<fdxlibraries.pf.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.pf.version>/<fdxlibraries.pf.version>'$VERSION_NUMBER-$PF_VERSION'<\/fdxlibraries.pf.version>/' pom.xml
sed -i 's/<fdxlibraries.mf.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.mf.version>/<fdxlibraries.mf.version>'$VERSION_NUMBER-$MF_VERSION'<\/fdxlibraries.mf.version>/' pom.xml
sed -i 's/<fdxlibraries.sa.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.sa.version>/<fdxlibraries.sa.version>'$VERSION_NUMBER-$SA_VERSION'<\/fdxlibraries.sa.version>/' pom.xml
sed -i 's/<fdxlibraries.sl.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.sl.version>/<fdxlibraries.sl.version>'$VERSION_NUMBER-$SL_VERSION'<\/fdxlibraries.sl.version>/' pom.xml
sed -i 's/<fdxlibraries.tl.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.tl.version>/<fdxlibraries.tl.version>'$VERSION_NUMBER-$TL_VERSION'<\/fdxlibraries.tl.version>/' pom.xml
sed -i 's/<fdxlibraries.te.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.te.version>/<fdxlibraries.te.version>'$VERSION_NUMBER-$TE_VERSION'<\/fdxlibraries.te.version>/' pom.xml
sed -i 's/<fdxlibraries.fa.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.fa.version>/<fdxlibraries.fa.version>'$VERSION_NUMBER-$FA_VERSION'<\/fdxlibraries.fa.version>/' pom.xml
sed -i 's/<fdxlibraries.ws.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.ws.version>/<fdxlibraries.ws.version>'$VERSION_NUMBER-$WS_VERSION'<\/fdxlibraries.ws.version>/' pom.xml
sed -i 's/<fdxlibraries.ae.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.ae.version>/<fdxlibraries.ae.version>'$VERSION_NUMBER-$AE_VERSION'<\/fdxlibraries.ae.version>/' pom.xml
sed -i 's/<fdxlibraries.ww.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.ww.version>/<fdxlibraries.ww.version>'$VERSION_NUMBER-$WW_VERSION'<\/fdxlibraries.ww.version>/' pom.xml
sed -i 's/<fdxlibraries.ss.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.ss.version>/<fdxlibraries.ss.version>'$VERSION_NUMBER-$SS_VERSION'<\/fdxlibraries.ss.version>/' pom.xml
sed -i 's/<fdxlibraries.we.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.we.version>/<fdxlibraries.we.version>'$VERSION_NUMBER-$WE_VERSION'<\/fdxlibraries.we.version>/' pom.xml
sed -i 's/<fdxlibraries.eb.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.eb.version>/<fdxlibraries.eb.version>'$VERSION_NUMBER-$EB_VERSION'<\/fdxlibraries.eb.version>/' pom.xml
sed -i 's/<fdxlibraries.us.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.us.version>/<fdxlibraries.us.version>'$VERSION_NUMBER-$US_VERSION'<\/fdxlibraries.us.version>/' pom.xml
sed -i 's/<fdxlibraries.ej.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.ej.version>/<fdxlibraries.ej.version>'$VERSION_NUMBER-$EJ_VERSION'<\/fdxlibraries.ej.version>/' pom.xml
sed -i 's/<fdxlibraries.os.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.os.version>/<fdxlibraries.os.version>'$VERSION_NUMBER-$OS_VERSION'<\/fdxlibraries.os.version>/' pom.xml
sed -i 's/<scm.revision>[-[:alnum:]./]\{1,\}<\/scm.revision>/<scm.revision>'$SVN_REV'<\/scm.revision>/' pom.xml


cp $POM_DIR/fdxObjectParser-pom.xml $JENKINS_WORKSPAGE/fdxObjectParser/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdxObjectParser/pom.xml

cp $POM_DIR/fdxUnitTesting-pom.xml $JENKINS_WORKSPAGE/fdxUnitTesting/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdxUnitTesting/pom.xml

cp $POM_DIR/fdUtil-pom.xml $JENKINS_WORKSPAGE/fdUtil/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdUtil/pom.xml

cp $POM_DIR/fdQuote-pom.xml $JENKINS_WORKSPAGE/fdQuote/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdQuote/pom.xml

cp $POM_DIR/fdPerformanceAccrual-pom.xml $JENKINS_WORKSPAGE/fdPerformanceAccrual/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdPerformanceAccrual/pom.xml

cp $POM_DIR/fdEJB-pom.xml $JENKINS_WORKSPAGE/fdEJB/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdEJB/pom.xml

cp $POM_DIR/fdPershingBulkOrder-pom.xml $JENKINS_WORKSPAGE/fdPershingBulkOrder/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdPershingBulkOrder/pom.xml

cp $POM_DIR/fdLPLPreTrade-pom.xml $JENKINS_WORKSPAGE/fdLPLPreTrade/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdLPLPreTrade/pom.xml

cp $POM_DIR/fdOrderVerifyCompliance-pom.xml $JENKINS_WORKSPAGE/fdOrderVerifyCompliance/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdOrderVerifyCompliance/pom.xml

cp $POM_DIR/fdAppClients-pom.xml $JENKINS_WORKSPAGE/fdAppClients/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdAppClients/pom.xml

cp $POM_DIR/fdPershingCrossTrading-pom.xml $JENKINS_WORKSPAGE/fdPershingCrossTrading/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdPershingCrossTrading/pom.xml

cp $POM_DIR/fdBroadridgeWS-pom.xml $JENKINS_WORKSPAGE/fdBroadridgeWS/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdBroadridgeWS/pom.xml

cp $POM_DIR/perOrdersPollEngine-pom.xml $JENKINS_WORKSPAGE/perOrdersPollEngine/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/perOrdersPollEngine/pom.xml

cp $POM_DIR/fdPershingOrderProcessing-pom.xml $JENKINS_WORKSPAGE/fdPershingOrderProcessing/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdPershingOrderProcessing/pom.xml

cp $POM_DIR/AFixOrderProcessor-pom.xml $JENKINS_WORKSPAGE/AFixOrderProcessor/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/AFixOrderProcessor/pom.xml

cp $POM_DIR/APartialAllocationProcess-pom.xml $JENKINS_WORKSPAGE/APartialAllocationProcess/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/APartialAllocationProcess/pom.xml

cp $POM_DIR/BustOrderProcessor-pom.xml $JENKINS_WORKSPAGE/BustOrderProcessor/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/BustOrderProcessor/pom.xml

cp $POM_DIR/CustodianOrderProcessor-pom.xml $JENKINS_WORKSPAGE/CustodianOrderProcessor/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/CustodianOrderProcessor/pom.xml

cp $POM_DIR/fdBenchMarksClient-pom.xml $JENKINS_WORKSPAGE/fdBenchMarksClient/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdBenchMarksClient/pom.xml

cp $POM_DIR/fdBillingClients-pom.xml $JENKINS_WORKSPAGE/fdBillingClients/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdBillingClients/pom.xml

cp $POM_DIR/fdBlendUpdate-pom.xml $JENKINS_WORKSPAGE/fdBlendUpdate/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/'  $JENKINS_WORKSPAGE/fdBlendUpdate/pom.xml

cp $POM_DIR/fdBulkAllocationProcess-pom.xml $JENKINS_WORKSPAGE/fdBulkAllocationProcess/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdBulkAllocationProcess/pom.xml

cp $POM_DIR/fdDynamicModelClient-pom.xml $JENKINS_WORKSPAGE/fdDynamicModelClient/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdDynamicModelClient/pom.xml

cp $POM_DIR/fdOrderExpirationProcess-pom.xml $JENKINS_WORKSPAGE/fdOrderExpirationProcess/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdOrderExpirationProcess/pom.xml

cp $POM_DIR/fdPendingTransactionPerformance-pom.xml $JENKINS_WORKSPAGE/fdPendingTransactionPerformance/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdPendingTransactionPerformance/pom.xml

cp $POM_DIR/fdPerformanceClient-pom.xml $JENKINS_WORKSPAGE/fdPerformanceClient/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdPerformanceClient/pom.xml

cp $POM_DIR/fdPeriodicFundTransfers-pom.xml $JENKINS_WORKSPAGE/fdPeriodicFundTransfers/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdPeriodicFundTransfers/pom.xml

cp $POM_DIR/fdProcessFixMessages-pom.xml $JENKINS_WORKSPAGE/fdProcessFixMessages/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdProcessFixMessages/pom.xml

cp $POM_DIR/MFOrderSweeper-pom.xml $JENKINS_WORKSPAGE/MFOrderSweeper/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/MFOrderSweeper/pom.xml

cp $POM_DIR/fdSecurityAllocationModelFileUploader-pom.xml $JENKINS_WORKSPAGE/fdSecurityAllocationModelFileUploader/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdSecurityAllocationModelFileUploader/pom.xml

cp $POM_DIR/fdSlvBalAdjustment-pom.xml $JENKINS_WORKSPAGE/fdSlvBalAdjustment/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdSlvBalAdjustment/pom.xml

cp $POM_DIR/fdTaxLotsAppClient-pom.xml $JENKINS_WORKSPAGE/fdTaxLotsAppClient/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdTaxLotsAppClient/pom.xml

cp $POM_DIR/fdTradeExceptionSweeper-pom.xml $JENKINS_WORKSPAGE/fdTradeExceptionSweeper/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdTradeExceptionSweeper/pom.xml

cp $POM_DIR/fdTransactionAllocationProcess-pom.xml $JENKINS_WORKSPAGE/fdTransactionAllocationProcess/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdTransactionAllocationProcess/pom.xml

cp $POM_DIR/fdWashSaleProcess-pom.xml $JENKINS_WORKSPAGE/fdWashSaleProcess/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdWashSaleProcess/pom.xml

cp $POM_DIR/fixAllocationEngine-pom.xml $JENKINS_WORKSPAGE/fixAllocationEngine/pom.xml 
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fixAllocationEngine/pom.xml

cp $POM_DIR/wsWeb-pom.xml $JENKINS_WORKSPAGE/wsWeb/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/wsWeb/pom.xml

cp $POM_DIR/fdSSO-pom.xml $JENKINS_WORKSPAGE/fdSSO/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdSSO/pom.xml

cp $POM_DIR/fdWeb-pom.xml $JENKINS_WORKSPAGE/fdWeb/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdWeb/pom.xml

cp $POM_DIR/FDwsWeb-pom.xml $JENKINS_WORKSPAGE/FDwsWeb/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/FDwsWeb/pom.xml

cp $POM_DIR/fdUser-pom.xml $JENKINS_WORKSPAGE/fdUser/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdUser/pom.xml

cp $POM_DIR/fdOrderStub-pom.xml $JENKINS_WORKSPAGE/fdOrderStub/pom.xml
sed -i 's/<Class-Path>.*<\/Class-Path>/<Class-Path>.<\/Class-Path>/' $JENKINS_WORKSPAGE/fdOrderStub/pom.xml

##--Application.xml Changes--
cd $JENKINS_WORKSPAGE/fdBrk/src/main/application/META-INF/
rm application.xml
svn update
cp application.xml application_tmp.xml
sed -i 's/AFixOrderProcessor-0.0.1.jar/AFixOrderProcessor-'$VERSION_NUMBER-$AF_VERSION'.jar/' application.xml
sed -i 's/APartialAllocationProcess-0.0.1.jar/APartialAllocationProcess-'$VERSION_NUMBER-$AP_VERSION'.jar/' application.xml
sed -i 's/FDwsWeb-0.0.1.war/FDwsWeb-'$VERSION_NUMBER-$EB_VERSION'.war/' application.xml
sed -i 's/fdAppClients-0.0.1.jar/fdAppClients-'$VERSION_NUMBER-$AC_VERSION'.jar/' application.xml
sed -i 's/fdBenchMarksClient-0.0.1.jar/fdBenchMarksClient-'$VERSION_NUMBER-$BC_VERSION'.jar/' application.xml
sed -i 's/fdBillingClients-0.0.1.jar/fdBillingClients-'$VERSION_NUMBER-$FB_VERSION'.jar/' application.xml
sed -i 's/fdBulkAllocationProcess-0.0.1.jar/fdBulkAllocationProcess-'$VERSION_NUMBER-$BA_VERSION'.jar/' application.xml
sed -i 's/fdDynamicModelClient-0.0.1.jar/fdDynamicModelClient-'$VERSION_NUMBER-$DM_VERSION'.jar/' application.xml
sed -i 's/fdEJB-0.0.1.jar/fdEJB-'$VERSION_NUMBER-$FE_VERSION'.jar/' application.xml
sed -i 's/fdOrderExpirationProcess-0.0.1.jar/fdOrderExpirationProcess-'$VERSION_NUMBER-$EP_VERSION'.jar/' application.xml
sed -i 's/fdPendingTransactionPerformance-0.0.1.jar/fdPendingTransactionPerformance-'$VERSION_NUMBER-$TP_VERSION'.jar/' application.xml
sed -i 's/fdPerformanceClient-0.0.1.jar/fdPerformanceClient-'$VERSION_NUMBER-$FP_VERSION'.jar/' application.xml
sed -i 's/fdPeriodicFundTransfers-0.0.1.jar/fdPeriodicFundTransfers-'$VERSION_NUMBER-$FT_VERSION'.jar/' application.xml
sed -i 's/fdProcessFixMessages-0.0.1.jar/fdProcessFixMessages-'$VERSION_NUMBER-$PF_VERSION'.jar/' application.xml
sed -i 's/fdSecurityAllocationModelFileUploader-0.0.1.jar/fdSecurityAllocationModelFileUploader-'$VERSION_NUMBER-$SA_VERSION'.jar/' application.xml
sed -i 's/fdSlvBalAdjustment-0.0.1.jar/fdSlvBalAdjustment-'$VERSION_NUMBER-$SL_VERSION'.jar/' application.xml
sed -i 's/fdTaxLotsAppClient-0.0.1.jar/fdTaxLotsAppClient-'$VERSION_NUMBER-$TL_VERSION'.jar/' application.xml
sed -i 's/fdTradeExceptionSweeper-0.0.1.jar/fdTradeExceptionSweeper-'$VERSION_NUMBER-$TE_VERSION'.jar/' application.xml
sed -i 's/fdTransactionAllocationProcess-0.0.1.jar/fdTransactionAllocationProcess-'$VERSION_NUMBER-$FA_VERSION'.jar/' application.xml
sed -i 's/fdUser-0.0.1.jar/fdUser-'$VERSION_NUMBER-$US_VERSION'.jar/' application.xml
sed -i 's/fdWashSaleProcess-0.0.1.jar/fdWashSaleProcess-'$VERSION_NUMBER-$WS_VERSION'.jar/' application.xml
sed -i 's/fdWeb-0.0.1.war/fdWeb-'$VERSION_NUMBER-$WE_VERSION'.war/' application.xml
sed -i 's/fdSSO-0.0.1.war/fdSSO-'$VERSION_NUMBER-$SS_VERSION'.war/' application.xml
sed -i 's/wsWeb-0.0.1.war/wsWeb-'$VERSION_NUMBER-$WW_VERSION'.war/' application.xml
sed -i 's/BustOrderProcessor-0.0.1.jar/BustOrderProcessor-'$VERSION_NUMBER-$BP_VERSION'.jar/' application.xml
sed -i 's/MFOrderSweeper-0.0.1.jar/MFOrderSweeper-'$VERSION_NUMBER-$MF_VERSION'.jar/' application.xml
sed -i 's/fdBlendUpdate-0.0.1.jar/fdBlendUpdate-'$VERSION_NUMBER-$BU_VERSION'.jar/' application.xml
sed -i 's/fixAllocationEngine-0.0.1.jar/fixAllocationEngine-'$VERSION_NUMBER-$AE_VERSION'.jar/' application.xml
sed -i 's/CustodianOrderProcessor-0.0.1.jar/CustodianOrderProcessor-'$VERSION_NUMBER-$CO_VERSION'.jar/' application.xml
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
#cp $JENKINS_WORKSPAGE/fdBrk/target/fdBrk-$JAR_VERSION.ear $JENKINS_WORKSPAGE/fdBrk/target/preejb_fdBrk-$JAR_VERSION.ear
#$EJB_DEPLOY/ejbdeploy.sh $EAR_DIR/preejb_fdBrk-$JAR_VERSION.ear /tmp/ $EAR_DIR/fdBrk-$JAR_VERSION.ear -cp $COMMON_LIB/log4j-core-2.8.2.jar:$COMMON_LIB/log4j-1.2-api-2.8.2.jar:$COMMON_LIB/log4j-api-2.8.2.jar:$UTIL_JAR/fdUtil-$JAR_VERSION.jar:$EXTERNAL_LIB/quickfixj-all-1.5.3.jar -nowarn

cp $JENKINS_WORKSPAGE/fdBrk/target/fdBrk-$JAR_VERSION.ear $JENKINS_WORKSPAGE/fdBrk/target/preejb_fdBrk-$JAR_VERSION.ear

$EJB_DEPLOY/ejbdeploy.sh $EAR_DIR/preejb_fdBrk-$JAR_VERSION.ear /tmp/ $EAR_DIR/fdBrk-$JAR_VERSION.ear -cp $COMMON_LIB/log4j-core-2.8.2.jar:$COMMON_LIB/log4j-1.2-api-2.8.2.jar:$COMMON_LIB/log4j-api-2.8.2.jar:$UTIL_JAR/fdUtil-$FU_VERSION.jar:$EXTERNAL_LIB/quickfixj-all-1.5.3.jar -nowarn

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

#echo "----- EJB Stub Validated Successfully -----"
#echo "-- Copy Artifacts to Archiva --"
#sshpass -p 'archiva123' scp -r /fdx/FDX_MVN_REPO_8_2_2/com/fd/brokerage/* archiva@10.20.40.165:/fdx/softwares/apache-archiva-2.2.3/repositories/internal/com/fd/brokerage/
