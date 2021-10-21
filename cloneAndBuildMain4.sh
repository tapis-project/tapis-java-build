#!/bin/bash
#=====================================================================
# cloneAndBuildMain4.sh
#
# The purpose of this script is to clone and build the main four tapis
# java-based repos. Will start in tapis repos directory at the 
# top-level, then clone and build tapis-bom, tapis-client-java,
# tapis-shared-java, and tapis-java in order. 
#
# This script must be run from the top level of tapis-java-build
# with tapis-java-build being in the same directory as desired
# location for the other tapis java-based repos.
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
git clone https://github.com/tapis-project/tapis-bom.git
cd tapis-bom
mvn clean install -DskipTaccProfile
echo finished building tapis-bom

echo building tapis-client-java
cd ../
git clone https://github.com/tapis-project/tapis-client-java.git
cd tapis-client-java
mvn clean install -DskipTaccProfile
echo finished building tapis-client-java

echo building tapis-shared-java
cd ../
git clone https://github.com/tapis-project/tapis-shared-java.git
cd tapis-shared-java
mvn clean install -DskipTaccProfile
echo finished building tapis-shared-java

#====================================================================
# Failing due to missing file in oss.sonatype.org
#====================================================================
#echo building tapis-java
#cd ../
#git clone https://github.com/tapis-project/tapis-java.git
#cd tapis-java
#mvn clean install -DskipTaccProfile
#echo finished building tapis-java
