#!/bin/sh
ENVBASH=$1
ENVBASH=${ENVBASH:-"bash"}
#echo "ENVBASH=$ENVBASH"
docker run --rm -ti -p 8000:80 vertigo/drupal-devel:latest $ENVBASH ${@:2}
