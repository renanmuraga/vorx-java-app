#!/bin/bash
echo "********************"
echo "** Pushing image ***"
echo "********************"
IMAGE="maven-project"
echo "** Logging in ***"
docker login -u renanmuraga -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG renanmuraga/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push renanmuraga/$IMAGE:$BUILD_TAG
