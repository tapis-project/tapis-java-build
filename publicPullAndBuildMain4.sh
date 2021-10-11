#!/bin/bash
cd ../

cd tapis-bom 
git pull
mvn clean install -DskipTaccProfile

cd ../tapis-client-java
git pull
mvn clean install -DskipTaccProfile

cd ../tapis-shared-java
git pull
mvn clean install -DskipTaccProfile

#====================================================================
# Failing due to missing file in oss.sonatype.org
#====================================================================
#cd ../tapis-java
#git pull
#mvn clean install -DskipTaccProfile

