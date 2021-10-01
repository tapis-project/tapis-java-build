#!/bin/bash
#navigating back to main tapis-project location on local machine
cd ../

echo pulling and building tapis-bom
cd tapis-bom
git pull
mvn clean install
echo finished building tapis-bom

echo pulling and building tapis-client-java
cd ../tapis-client-java
git pull
mvn clean install
echo finished building tapis-client-java

echo pulling and building tapis-shared-java
cd ../tapis-shared-java
git pull
mvn clean install
echo finished building tapis-shared-java

echo pulling and building tapis-java
cd ../tapis-java
git pull
mvn clean install
echo finished building tapis-java

echo pulling and building tapis-apps
cd ../tapis-apps
git pull
mvn clean install
echo finished building tapis-apps

echo pulling and building tapis-systems
cd ../tapis-systems
git pull
mvn clean install
echo finished building tapis-systems

echo pulling and building tapis-files
cd ../tapis-files
git pull
mvn clean install
echo finished building tapis-files

echo pulling and building tapis-meta
cd ../tapis-meta
git pull
mvn clean install
echo building tapis-meta

echo pulling and building tapis-cmd
cd ../tapis-cmd
git pull
mvn clean install
echo finished building tapis-cmd

echo pulling and building notifications
cd ../notifications
git pull
mvn clean install
echo finished building notifications

echo pulling and building metav3-RH4-core
cd ../metav3-RH4-core
git pull
mvn clean install
echo finished building metav3-RH4-core

#MOST LIKELY DEPRECATED
echo pulling and building tapis-testapps
cd ../tapis-testapps
git pull
mvn clean install
echo finished building tapis-testapps

#MOST LIKELY DEPRECATED
echo pulling and building client-tests
cd ../client-tests
git pull
mvn clean install
echo finished building client-tests

#MOST LIKELY DEPRECATED
echo pulling and building tapis-shared-java-tst
cd ../tapis-shared-java-tst
git pull
mvn clean install
echo finished building tapis-shared-java-tst

#MOST LIKELY DEPRECATED
echo pulling and building tapis-client-java-tst
cd ../tapis-client-java-tst
git pull
mvn clean install
echo finished building tapis-client-java-tst

#MOST LIKELY DEPRECATED
echo pulling and building tapis-vault-java-driver
cd ../tapis-vault-java-driver
git pull
mvn clean install
echo finished building tapis-vault-java-driver

#MOST LIKELY DEPRECATED
echo pulling and building client-demo-java
cd ../client-demo-java
git pull
mvn clean install
echo finished building client-demo-java
