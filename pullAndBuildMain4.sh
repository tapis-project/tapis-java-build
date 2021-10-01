#!/bin/bash
cd ../

cd tapis-bom
git pull
mvn clean install

cd ../tapis-client-java
git pull
mvn clean install

cd ../tapis-shared-java
git pull
mvn clean install

cd ../tapis-java
git pull
mvn clean install

