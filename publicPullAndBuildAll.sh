#!/bin/bash
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

#echo pulling and building tapis-java
#cd ../tapis-java
#git pull
#mvn clean install -DskipTaccProfile
#echo finished building tapis-java

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

#echo pulling and building tapis-files
#cd ../tapis-files
#git pull
#mvn clean install -DskipTaccProfile
#echo finished building tapis-files

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

echo pulling and building notifications
cd ../notifications
git pull
mvn clean install -DskipTaccProfile
echo finished building notifications

#MOST LIKELY DEPRECATED
echo pulling and building tapis-testapps
cd ../tapis-testapps
git pull
mvn clean install -DskipTaccProfile
echo finished building tapis-testapps

#MOST LIKELY DEPRECATED
echo pulling and building tapis-shared-java-tst
cd ../tapis-shared-java-tst
git pull
mvn clean install -DskipTaccProfile
echo finished building tapis-shared-java-tst

