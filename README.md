# tapis-java-build
Instructions for building all Tapis Java components

## Setup
Linux:
- need jdk 15 or later
- need maven 
- need docker cli

macOS:
- need jdk 15 or later
- need maven
- need docker desktop
- need to change SED to gnuSED

Windows:
DON'T HAVE WINDOWS EXECUTABLE TO USE FOR virtualBox VM

## Running
1. clone this repo in same directory as other tapis repos
2.NOTE: need to add option to each shell program so that users can state whether they want to run as a tacc developer or a tacc-external developer
    - IF FIRST TIME RUNNING OR MISSING SOME REPOS 
	run ./cloneAndBuildAll.sh
    - IF MISSIING NO REPOS 
	run ./pullAndBuildAll.sh
    - IF ONLY WANT TO CLONE AND BUILD MAIN 4 (tapis-bom, tapis-client-java, tapis-shared-java, tapis-java)
      	run ./cloneAndBuildMain4.sh
    - IF ONLY WANT TO PULL AND BUILD MAIN 4 (tapis-bom, tapis-client-java, tapis-shared-java, tapis-java)
      	run ./pullAndBuildMain4.sh

### List of Repos and Their Status
repo name followd by OS it successfully builds on with or without the vpn/tacc network 

- tapis-client-java: linux, macOS with and without VPN
- tapis-shared-java: linux, macOS with and without VPN
- tapis-vaultbackup: linux, macOS with and without VPN
- tapis-systems: linux, macOS with and without VPN
- tapis-cmd: linux, macOS with and without VPN
- tapis-apps: linux, macOS with and without VPN
- !!tapis-files: FAILS OFF VPN missing jar from oss.sonatype.org nexus repo manager!!
- !!tapis-java: FAILS OFF VPN missing jar from oss.sonatype.org nexus repo manager!!
- tapis-meta: linux, macOS ONLY WITH VPN CURRENTLY
- notifications: linux, macOS ONLY WITH VPN CURRENTLY
- metav3-RH4-core: Is a docker image, no need to build
- tapis-meta-security: linux, macOS 
- tapis-testapps: linux, macOS ONLY WITH VPN CURRENTLY
- client-tests: SCHEDULED FOR REMOVAL, NO LONGER IN USE
- tapis-shared-java-tst: linux, macOS ONLY WITH VPN CURRENTLY 
- tapis-client-java-tst: SCHEDULED FOR REMOVAL, NO LONGER IN USE
- !!tapis-vault-java-driver: **FAILS** USES OLD VERSION OF GRADLE
- client-demo-java: SCHEDULED FOR REMOVAL, NO LONGER IN USE

### Current Hold-ups
Now with the changed method of activating, the default profile repos are building at the desired speed and correctly as tested by tapis-cmd. Will need to go through built repos and check that parent pom
is being inherited correctly. I am adding each edited pom to their own respective branch inside each repo named publicBuild. The only addition to the regular mvn clean install is now -DskipTaccProfile.
