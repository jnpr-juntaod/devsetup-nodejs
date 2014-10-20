#!/bin/sh
# Copyright 2014 Juniper Networks, Inc. All rights reserved.
# Auther: Shawnwang

readonly REPO_3rdParty=lib-3rdParty
readonly REPO_3rdParty_BRANCH=develop
readonly CURDIR=$(pwd)
readonly BASE_DIR=$CURDIR/..
readonly TMP_DIR=$BASE_DIR/../.tmprepo/$REPO_3rdParty_BRANCH
readonly NODE_MODULES=$BASE_DIR/node_modules
readonly NODE_HOME=$BASE_DIR/..
NODENAME=

readonly GIT_PREFIX=git@github.com:JSpaceTeam
DEP_LIST[0]=easy-rest-spray
DEP_LIST[1]=system-services
DEP_LIST[2]=ems-inventory
DEP_LIST[3]=ems-configuration

DEP_BRANCH[0]=develop
DEP_BRANCH[1]=develop
DEP_BRANCH[2]=develop
DEP_BRANCH[3]=develop

DEP_LIST_STATIC[1]=shadowfax
DEP_LIST_STATIC[2]=js-ui-base
DEP_LIST_STATIC[3]=js-ems-ui
DEP_STATIC_BRANCH[1]=develop
DEP_STATIC_BRANCH[2]=develop
DEP_STATIC_BRANCH[3]=develop
initDir() {
    mkdir -p $CURDIR/static
}

updateSetup() {
    cd $CURDIR
    git pull
}

git_clone() {
    if [[ -d $1 ]]; then
        echo "repository '$1' exists, pulling the newest codes for branch '$2'"
        cd $1
        git pull
        cd ..
    elif [[ x$1 != x ]]; then
        git clone -b $2 "$GIT_PREFIX/$1"
    fi
}

installDep() {
    cd $CURDIR
    for((i=0;i<100;i++))
    do
	    if [[ ! x"${DEP_LIST[$i]}" = x ]]; then
		    git_clone ${DEP_LIST[$i]} ${DEP_BRANCH[$i]}
        fi
    done
}

installStaticDep() {
    cd $CURDIR/static
    for((i=0;i<100;i++))
    do
	    if [[ ! x"${DEP_LIST_STATIC[$i]}" = x ]]; then
		    git_clone ${DEP_LIST_STATIC[$i]} ${DEP_STATIC_BRANCH[$i]}
        fi
    done
}

main() {
    echo "Initializing Directory ..."
    initDir
    echo "Updating setup script itself ..."
    updateSetup
    echo "Updating Dependencies..."
    installDep
    echo "Updating Static Dependencies..."
    installStaticDep
    echo "DONE!"
}

main
