#!/bin/bash
#=====================================================================
# cloneAndBuildAll.sh
#
# The purpose of this script is to clone and build all tapis java-based
# repos. Will start in tapis repos directory at the top-level, then 
# clone and build each tapis java-based repo.
#
# This script must be run from the top level of tapis-java-build
# with tapis-java-build being in the same directory as desired 
# location for all other java repos.
#
# tapis repos directory
# \___
#     |___ tapis-java-build
#     |___ other tapis repos
#
#=====================================================================

#navigating back to main tapis-project location on local machine
cd ../

echo cloning and building tapis-bom
git clone https://github.com/tapis-project/tapis-bom.git
cd tapis-bom
mvn clean install -DskipTaccProfile
echo finished building tapis-bom

echo cloning and building tapis-client-java
cd ../
git clone https://github.com/tapis-project/tapis-client-java.git
cd tapis-client-java
mvn clean install -DskipTaccProfile
echo finished building tapis-client-java

echo cloning and building tapis-shared-java
cd ../
git clone https://github.com/tapis-project/tapis-shared-java.git
cd tapis-shared-java
mvn clean install -DskipTaccProfile
echo finished building tapis-shared-java

echo cloning and building tapis-java
cd ../
git clone https://github.com/tapis-project/tapis-java.git
cd tapis-java
mvn clean install -DskipTaccProfile
echo finished building tapis-java

echo cloning and building tapis-systems
cd ../
git clone https://github.com/tapis-project/tapis-systems.git
cd tapis-systems
mvn clean install -DskipTaccProfile
echo finished building tapis-systems

echo cloning and building tapis-vaultbackup
cd ../
git clone https://github.com/tapis-project/tapis-vaultbackup.git
cd tapis-vaultbackup
mvn clean install -DskipTaccProfile
echo finished building tapis-vaultbackup

echo cloning and building tapis-cmd
cd ../
git clone https://github.com/tapis-project/tapis-cmd.git
cd tapis-cmd
mvn clean install -DskipTaccProfile
mvn -f shaded-pom.xml package -DskipTaccProfile
echo finished building tapis-cmd

echo cloning and building tapis-apps
cd ../
git clone https://github.com/tapis-project/tapis-apps.git
cd tapis-apps
mvn clean install -DskipTaccProfile
echo finished building tapis-apps


echo cloning and building tapis-files
cd ../
git clone https://github.com/tapis-project/tapis-files.git
cd tapis-files
mvn clean install -DskipTaccProfile
echo finished building tapis-files

echo cloning and building tapis-meta
cd ../
git clone https://github.com/tapis-project/tapis-meta.git
cd tapis-meta
mvn clean install -DskipTaccProfile
echo finished building tapis-meta

echo cloning and building notifications
cd ../
git clone https://github.com/tapis-project/tapis-notifications.git
cd tapis-notifications
mvn clean install -DskipTaccProfile
echo finished building notifications

echo cloning and building tapis-testapps
cd ../
git clone https://github.com/tapis-project/tapis-testapps.git
cd tapis-testapps
mvn clean install -DskipTaccProfile
echo finished building tapis-testapps

echo cloning and building tapis-shared-java-tst
cd ../
git clone https://github.com/tapis-project/tapis-shared-java-tst.git
cd tapis-shared-java-tst
mvn clean install -DskipTaccProfile
echo finished building tapis-shared-java-tst


