#!/bin/bash
#MUST BE CONNECTED TO THE TACC VPN

cd ../

cd tapis-bom 
git pull
mvn clean install 

cd ../tapis-client-java
git pull
mvn clean install 

cd ../tapis-shared-java
git pull
mvn clean install 

#====================================================================
# Failing due to missing file in oss.sonatype.org
#====================================================================
#cd ../tapis-java
#git pull
#mvn clean install

