#!/bin/bash
#=====================================================================
# pullAndBuildAll.sh
#
# The purpose of this script is to pull and build all of the tapis
# java-based repos. Will start in tapis repos directory at the
# top-level, then navigate to each repo and pull and build all tapis
# java-based repos. 
#
# This script must be run from the top level of tapis-java-build
# with tapis-java-build being in the same directory as desired
# location for the other tapis java-based repos AFTER cloning every
# tapis java-based repo.
#
# tapis repos directory
# \___
#     |___ tapis-java-build
#     |___ other tapis repos
#
#=====================================================================

#navigating back to main tapis-project location on local machine
cd ../

echo pulling and building tapis-bom
cd tapis-bom
git pull
mvn clean install -DskipTaccProfile
echo finished building tapis-bom

echo pulling and building tapis-client-java
cd ../tapis-client-java
git pull
mvn clean install -DskipTaccProfile
echo finished building tapis-client-java

echo pulling and building tapis-shared-java
cd ../tapis-shared-java
git pull
mvn clean install -DskipTaccProfile
echo finished building tapis-shared-java

echo pulling and building tapis-security
cd ../tapis-security
git pull
mvn clean install -DskipTaccProfile
echo finished building tapis-security

echo pulling and building tapis-jobs
cd ../tapis-jobs
git pull
mvn clean install -DskipTaccProfile
echo finished building tapis-jobs

echo pulling and building tapis-apps
cd ../tapis-apps
git pull
mvn clean install -DskipTaccProfile
echo finished building tapis-apps

echo pulling and building tapis-systems
cd ../tapis-systems
git pull
mvn clean install -DskipTaccProfile
echo finished building tapis-systems

echo pulling and building tapis-files
cd ../tapis-files
git pull
mvn clean install -DskipTaccProfile
echo finished building tapis-files

echo pulling and building tapis-meta
cd ../tapis-meta
git pull
mvn clean install -DskipTaccProfile
echo building tapis-meta

echo pulling and building tapis-cmd
cd ../tapis-cmd
git pull
mvn clean install -DskipTaccProfile
echo finished building tapis-cmd

echo pulling and building tapis-notifications
cd ../tapis-notifications
git pull
mvn clean install -DskipTaccProfile
echo finished building tapis-notifications

echo pulling and building tapis-testapps
cd ../tapis-testapps
git pull
mvn clean install -DskipTaccProfile
echo finished building tapis-testapps

echo pulling and building tapis-shared-java-tst
cd ../tapis-shared-java-tst
git pull
mvn clean install -DskipTaccProfile
echo finished building tapis-shared-java-tst

