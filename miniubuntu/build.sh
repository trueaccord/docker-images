#!/bin/bash
today=`date +%Y%m%d`
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
echo "Building minibuntu:$today"
# No cache shouldn't be needed, but keep an eye on it.
##docker build . --no-cache=true -t quay.io/trueaccord/miniubuntu:$today
docker build . --no-cache=true -t quay.io/trueaccord/miniubuntu:$today
docker tag quay.io/trueaccord/miniubuntu:$today  quay.io/trueaccord/miniubuntu:latest
docker push quay.io/trueaccord/miniubuntu:$today
docker push quay.io/trueaccord/miniubuntu:latest

