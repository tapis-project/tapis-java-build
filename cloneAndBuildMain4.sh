#!/bin/bash
#navigating back to main tapis-project location on local machine
cd ../

echo building tapis-bom
git clone https://github.com/tapis-project/tapis-bom.git
cd tapis-bom
mvn clean install
echo finished building tapis-bom

echo building tapis-client-java
cd ../
git clone https://github.com/tapis-project/tapis-client-java.git
cd tapis-client-java
mvn clean install
echo finished building tapis-client-java

echo building tapis-shared-java
cd ../
git clone https://github.com/tapis-project/tapis-shared-java.git
cd tapis-shared-java
mvn clean install
echo finished building tapis-shared-java

#====================================================================
# Failing due to missing file in oss.sonatype.org
#====================================================================
#echo building tapis-java
#cd ../
#git clone https://github.com/tapis-project/tapis-java.git
#cd tapis-java
#mvn clean install
#echo finished building tapis-java
