# tapis-java-build
Instructions for building all Tapis Java components

## Introduction
For information on Tapis v3 refer to: https://tapis.readthedocs.io/en/latest/

## Running
1. clone this repo in same directory as other tapis repos
2. from the top-level of tapis-java-build run these shell scripts to build in the desired fashion
    - **IF MISSING NO REPOS AND NEED NO UPDATE**
        run ./buildAll.sh
    - **IF FIRST TIME RUNNING OR MISSING SOME REPOS**
        run ./cloneAndBuildAll.sh
    - **IF MISSIING NO REPOS BUT NEED TO UPDATE**
        run ./pullAndBuildAll.sh
    - **IF ONLY WANT TO CLONE AND BUILD MAIN 4** (tapis-bom, tapis-client-java, tapis-shared-java, tapis-java)
        run ./cloneAndBuildMain4.sh
    - **IF ONLY WANT TO PULL AND BUILD MAIN 4** (tapis-bom, tapis-client-java, tapis-shared-java, tapis-java)
        run ./pullAndBuildMain4.sh

## Java and Maven Requirements
- need jdk 15 or later
- need maven 3.5 or later 

## Setup for Linux
- need jdk 15 or later
- need maven 
- need docker cli

## Setup for macOS
- need jdk 15 or later
- need maven
- need docker desktop
- need to change SED to gnuSED

### macOS sed change instructions
1. brew install gnu-sed
2. brew info gnu-sed
3. add this line to your ~/.bashrc for bash, or ~/.zshrc for zsh: export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
4. now we can use gnu-sed as sed
5. for more details here is the reference: https://medium.com/@bramblexu/install-gnu-sed-on-mac-os-and-set-it-as-default-7c17ef1b8f64

### List of Repos and Their Status
repo name followd by OS it successfully builds on with or without the vpn/tacc network 

- tapis-client-java: linux, macOS with and without VPN
- tapis-shared-java: linux, macOS with and without VPN
- tapis-vaultbackup: linux, macOS with and without VPN
- tapis-systems: linux, macOS with and without VPN
- tapis-cmd: linux, macOS with and without VPN
- tapis-apps: linux, macOS with and without VPN
- tapis-files: linux, macOS with and without VPN 
- !!tapis-java: FAILS OFF VPN missing tapis-vault-java-driver jar from oss.sonatype.org nexus repo manager!!
- tapis-meta: linux, macOS with and without VPN
- notifications: linux, macOS with and without VPN
- metav3-RH4-core: Is a docker image, no need to build
- tapis-meta-security: SCHEDULED FOR REMOVAL, NO LONGER IN USE
- tapis-testapps: linux, macOS with and without VPN
- client-tests: SCHEDULED FOR REMOVAL, NO LONGER IN USE
- tapis-shared-java-tst: linux, macOS with and without VPN 
- tapis-client-java-tst: SCHEDULED FOR REMOVAL, NO LONGER IN USE
- tapis-vault-java-driver: WILL ADD NOTE AND REQUIRE DEVELOPERS TO USE OLD VERSION OF GRADLE
- client-demo-java: SCHEDULED FOR REMOVAL, NO LONGER IN USE

