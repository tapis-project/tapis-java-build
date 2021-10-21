#!/bin/bash
#=====================================================================
# pullAndBuildAll.sh
#
# The purpose of this script is to pull and build the main four tapis
# java-based repos. Will start in tapis repos directory at the
# top-level, then navigate to each repo and pull and build all tapis
# java-based repos.
#
# This script must be run from the top level of tapis-java-build
# with tapis-java-build being in the same directory as desired
# location for the other tapis java-based repos AFTER cloning the main 
# four tapis java-based repo.
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
git checkout publicBuild
git pull
mvn clean install -DskipTaccProfile
echo finished building tapis-bom

echo pulling and building tapis-client-java
cd ../tapis-client-java
git checkout publicBuild
git pull
mvn clean install -DskipTaccProfile
echo finished building tapis-client-java

echo pulling and building tapis-shared-java
cd ../tapis-shared-java
git checkout publicBuild
git pull
mvn clean install -DskipTaccProfile
echo finished building tapis-shared-java

echo pulling and building tapis-shared-java
cd ../tapis-java
git checkout publicBuild
git pull
mvn clean install -DskipTaccProfile
echo finished building tapis-shared-java
