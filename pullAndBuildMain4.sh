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

