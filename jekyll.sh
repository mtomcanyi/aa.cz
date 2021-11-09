#!/bin/bash

if (($# < 1))
then
	echo "Usage: jekyll.sh [ build | serve ]"
	exit 1;
fi


export JEKYLL_VERSION=3.8
docker run --rm \
  --volume="$PWD:/srv/jekyll" \
  --publish 4000:4000 \
  -it jekyll/jekyll:$JEKYLL_VERSION \
  jekyll $1
