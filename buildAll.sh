#!/bin/bash
#=====================================================================
# buildAll.sh 
#
# The purpose of this script is to build already cloned and up-to-date
# tapis java-based repos. Will navigate to each individual java repo
# and run a mvn clean install as well as a mvn package if applicable. 
#
# This script must be run from the top level of tapis-java-build
# with tapis-java-build being in the same directory as all other
# tapis repos
#
# tapis repos directory
# \___
#     |___ tapis-java-build
#     |___ other tapis repos
#
#=====================================================================

#navigating back to main tapis-project location on local machine
cd ../

echo building tapis-bom
cd tapis-bom 
mvn clean install -DskipTaccProfile
echo finished building tapis-bom

echo building tapis-client-java
cd ../tapis-client-java
mvn clean install -DskipTaccProfile
echo finished building tapis-client-java

echo building tapis-shared-java
cd ../tapis-shared-java
mvn clean install -DskipTaccProfile
echo finished building tapis-shared-java

echo building tapis-security
cd ../tapis-security
mvn clean install -DskipTaccProfile
echo finished building tapis-security

echo building tapis-jobs
cd ../tapis-jobs
mvn clean install -DskipTaccProfile
echo finished building tapis-jobs

echo building tapis-apps
cd ../tapis-apps
mvn clean install -DskipTaccProfile
echo finished building tapis-apps

echo building tapis-systems
cd ../tapis-systems
mvn clean install -DskipTaccProfile
echo finished building tapis-systems

echo building tapis-files
cd ../tapis-files
mvn clean install -DskipTaccProfile
echo finished building tapis-files

echo building tapis-meta
cd ../tapis-meta
mvn clean install -DskipTaccProfile
echo building tapis-meta

echo building tapis-cmd
cd ../tapis-cmd
mvn clean install -DskipTaccProfile
mvn -f shaded-pom.xml package -DskipTaccProfile
echo finished building tapis-cmd

echo building tapis-notifications
cd ../tapis-notifications
mvn clean install -DskipTaccProfile
echo finished building tapis-notifications

echo building tapis-testapps
cd ../tapis-testapps
mvn clean install -DskipTaccProfile
echo finished building tapis-testapps

echo building tapis-shared-java-tst
cd ../tapis-shared-java-tst
mvn clean install -DskipTaccProfile
echo finished building tapis-shared-java-tst
