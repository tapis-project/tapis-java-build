# tapis-java-build
Instructions for building all Tapis Java components

## Introduction
    - For information on Tapis v3 refer to: https://tapis.readthedocs.io/en/latest/
    - For the tapis live docs refer to: https://tapis-project.github.io/live-docs/

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
- need jdk 17.2 or later
- need maven 3.6.3 or later 

## Setup for Linux
- need jdk 17.2 or later
- need maven 3.6.3 or later
- need docker cli

## Setup for macOS
- need jdk 17.2 or later
- need maven 3.6.3 or later
- need docker desktop and must have it running while building repositories
- need to change SED to gnuSED

### macOS sed change instructions
1. brew install gnu-sed
2. brew info gnu-sed
3. add this line to your ~/.bashrc for bash, or ~/.zshrc for zsh: export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
4. now we can use gnu-sed as sed
5. for more details here is the reference: https://medium.com/@bramblexu/install-gnu-sed-on-mac-os-and-set-it-as-default-7c17ef1b8f64

### List of Repos and Their Purpose

- tapis-client-java: Top level wrapper for all java client SDK's
- tapis-shared-java: Shared libraries and api's for all java code other than tapis-client-java to prevent circular dependencies
- tapis-vaultbackup: Backup program for Hashicorp Vault instances that use the raft backend storage. This utility program runs 
                     as a daemon the host on which Vault runs and periodically takes a snapshot of the local raft storage.
- tapis-systems: Tapis Systems service housing Systems api and Systems lib
- tapis-cmd: Provides a convenient way for Tapis commands to be issued from within a Java IDE and from the command line.
- tapis-apps: Tapis Applications service housing Apps api and Apps lib
- tapis-files: Tapis Files api and backend
- tapis-java: Tapis Jobs and Security api's and lib's
- tapis-meta: Tapis Meta data service repository
- notifications: Tapis Notifications system 
- metav3-RH4-core: Docker image for the restheart base server
- tapis-testapps: Test application used to exercise Tapis Jobs service
- tapis-shared-java-tst: Test repo for tapis-shared-java code release flow 
