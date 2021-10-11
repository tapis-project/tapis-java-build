#!/bin/bash
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

#====================================================================
# Failing due to missing file in oss.sonatype.org
#====================================================================
#echo cloning and building tapis-java
#cd ../
#git clone https://github.com/tapis-project/tapis-java.git
#cd tapis-java
#mvn clean install -DskipTaccProfile
#echo finished building tapis-java

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


#====================================================================
# Failing due to missing file in oss.sonatype.org
#====================================================================
#echo cloning and building tapis-files
#cd ../
#git clone https://github.com/tapis-project/tapis-files.git
#cd tapis-files
#mvn clean install -DskipTaccProfile
#echo finished building tapis-files

echo cloning and building tapis-meta
cd ../
git clone https://github.com/tapis-project/tapis-meta.git
cd tapis-meta
mvn clean install -DskipTaccProfile
echo finished building tapis-meta

echo cloning and building notifications
cd ../
git clone https://github.com/tapis-project/notifications.git
cd notifications
mvn clean install -DskipTaccProfile
echo finished building notifications

#MOST LIKELY DEPRECATED
echo cloning and building tapis-testapps
cd ../
git clone https://github.com/tapis-project/tapis-testapps.git
cd tapis-testapps
mvn clean install -DskipTaccProfile
echo finished building tapis-testapps

#MOST LIKELY DEPRECATED
echo cloning and building tapis-shared-java-tst
cd ../
git clone https://github.com/tapis-project/tapis-shared-java-tst.git
cd tapis-shared-java-tst
mvn clean install -DskipTaccProfile
echo finished building tapis-shared-java-tst


