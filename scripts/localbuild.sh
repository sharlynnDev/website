#!/bin/sh

# emulate what .travis.yml does

export VOLUME="/opt/jekyll"
export PRETTY_BUILD_FOLDER="$VOLUME/builds/pretty"
export BUILD_FILE="$VOLUME/builds/ugly.zip"
export JS_FOLDER="$PRETTY_BUILD_FOLDER/assets/js"
export CSS_FOLDER="$PRETTY_BUILD_FOLDER/css"

sudo docker run --label=jekyll -v $(pwd):/opt/jekyll -it -p 127.0.0.1:4000:4000 \
-e VOLUME=$VOLUME \
-e PRETTY_BUILD_FOLDER=$PRETTY_BUILD_FOLDER \
-e BUILD_FILE=$BUILD_FILE \
-e JS_FOLDER=$JS_FOLDER \
-e CSS_FOLDER=$CSS_FOLDER \
starefossen/ruby-node /bin/sh /opt/jekyll/scripts/jekyllBuild.sh

# now get build artifacts from container