# tapis-java-build
Instructions for building all Tapis Java components

##Setup
Linux:
- need jdk 11 or later
- need maven 
- need docker cli

macOS:
- need jdk 11 or later
- need maven
- need docker desktop
- need to change SED to gnuSED

Windows:
DON'T HAVE WINDOWS EXECUTABLE TO USE FOR virtualBox VM

###Running
1.) clone this repo in same directory as other tapis repos
2.) - IF FIRST TIME RUNNING OR MISSING SOME REPOS 
	run ./cloneAndBuildAll.sh
    - IF MISSIING NO REPOS 
	run ./pullAndBuildAll.sh
    - IF ONLY WANT TO CLONE AND BUILD MAIN 4 (tapis-bom, tapis-client-java, tapis-shared-java, tapis-java)
      	run ./cloneAndBuildMain4.sh
    - IF ONLY WANT TO PULL AND BUILD MAIN 4 (tapis-bom, tapis-client-java, tapis-shared-java, tapis-java)
      	run ./pullAndBuildMain4.sh

####List of Repos and Their Status
repo name followd by OS it successfully builds on with or without the vpn/tacc network 

- tapis-client-java: linux, macOS with and without VPN
- tapis-shared-java: linux, macOS with and without VPN
- tapis-vaultbackup: linux, macOS with and without VPN
- tapis-systems: linux, macOS with and without VPN
- tapis-cmd: linux, macOS with and without VPN
- tapis-apps: linux, macOS with and without VPN
- tapis-files: linux, macOS with and without VPN
- !!tapis-java: linux, macOS ONLY WITH VPN CURRENTLY!!
- tapis-meta: linux, macOS ONLY WITH VPN CURRENTLY
- notifications: linux, macOS ONLY WITH VPN CURRENTLY
- !!metav3-RH4-core: **FAILS** WITH Source option 5 is no longer supported. Use 7 or later.!!
- tapis-meta-security: linux, macOS 
- tapis-testapps: linux, macOS ONLY WITH VPN CURRENTLY
- !!client-tests: **FAILS** ON systemsClient cannot find symbol for missing classes, **DEPRECATED**!!
- tapis-shared-java-tst: linux, macOS ONLY WITH VPN CURRENTLY 
- !!tapis-client-java-tst: **FAILS** ON Authenticator Client cannot find symbol for missing class, **DEPRECATED**!!
- !!tapis-vault-java-driver: **FAILS** ON MISSING POM, USES GRADLE, **DEPRECATED**!! 
- client-demo-java: linux, macOS ONLY WITH VPN CURRENTLY, **DEPRECATED**


