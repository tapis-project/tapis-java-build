#!/bin/bash
#navigating back to main tapis-project location on local machine
cd ../

echo building tapis-bom
cd tapis-bom 
mvn clean installi -DskipTaccProfile
echo finished building tapis-bom

echo building tapis-client-java
cd ../tapis-client-java
mvn clean install -DskipTaccProfile
echo finished building tapis-client-java

echo building tapis-shared-java
cd ../tapis-shared-java
mvn clean install -DskipTaccProfile
echo finished building tapis-shared-java

#====================================================================
# Failing due to missing file in oss.sonatype.org
#====================================================================
#echo building tapis-java
#cd ../tapis-java
#mvn clean install -DskipTaccProfile
#echo finished building tapis-java

echo building tapis-apps
cd ../tapis-apps
mvn clean install -DskipTaccProfile
echo finished building tapis-apps

echo building tapis-systems
cd ../tapis-systems
mvn clean install -DskipTaccProfile
echo finished building tapis-systems

#====================================================================
# Failing due to missing file in oss.sonatype.org
#====================================================================
#echo building tapis-files
#cd ../tapis-files
#mvn clean install -DskipTaccProfile
#echo finished building tapis-files

echo building tapis-meta
cd ../tapis-meta
mvn clean install -DskipTaccProfile
echo building tapis-meta

echo building tapis-cmd
cd ../tapis-cmd
mvn clean install -DskipTaccProfile
mvn -f shaded-pom.xml -DskipTaccProfile
echo finished building tapis-cmd

echo building notifications
cd ../notifications
mvn clean install -DskipTaccProfile
echo finished building notifications

#MOST LIKELY DEPRECATED
echo building tapis-testapps
cd ../tapis-testapps
mvn clean install -DskipTaccProfile
echo finished building tapis-testapps

#MOST LIKELY DEPRECATED
echo building tapis-shared-java-tst
cd ../tapis-shared-java-tst
mvn clean install -DskipTaccProfile
echo finished building tapis-shared-java-tst
