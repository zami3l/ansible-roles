#! /bin/bash

PATH_COLLECTIONS="$1"
NAMESPACE="$(cat galaxy.yml| grep "namespace:" | cut -d " " -f 2-)"
COLLECTION="$(cat galaxy.yml| grep "name:" | cut -d " " -f 2-)"
VERSION="$(cat galaxy.yml| grep "version:" | cut -d " " -f 2-)"
ARCHIVE="$NAMESPACE-$COLLECTION-$VERSION.tar.gz"

ansible-galaxy collection build --force

if [ -z $PATH_COLLECTIONS ]; then
    ansible-galaxy collection install $ARCHIVE --force
else
    ansible-galaxy collection install $ARCHIVE -p $PATH_COLLECTIONS --force
fi
