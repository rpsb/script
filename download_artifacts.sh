JAR_VERSION=$1
echo "Download Version : "$JAR_VERSION
sed -i '0,/<version>/s/<version>[-[:alnum:]./]\{1,\}<\/version>/<version>'$JAR_VERSION'<\/version>/' download_pom.xml
sed -i 's/<fdxlibraries.version>[-[:alnum:]./]\{1,\}<\/fdxlibraries.version>/<fdxlibraries.version>'$JAR_VERSION'<\/fdxlibraries.version>/' download_pom.xml
# download maven command
mvn -f download_pom.xml --settings settings.xml --global-settings settings.xml clean dependency:copy-dependencies
