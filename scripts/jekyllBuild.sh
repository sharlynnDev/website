#!/bin/sh

echo testsecret=$test
echo volume=$VOLUME
echo js_folder=$JS_FOLDER
cd /opt/jekyll
bundle install
bundle exec jekyll build --source web/ --destination "$PRETTY_BUILD_FOLDER"

# optimise JS
npm install -g uglify-js
echo "size before $(stat -c %s $JS_FOLDER/book.js)"
uglifyjs --compress --mangle --pure-funcs --output $JS_FOLDER/book.js -- $JS_FOLDER/book.js
echo "size after $(stat -c %s $JS_FOLDER/book.js)"
echo "size before $(stat -c %s $JS_FOLDER/main.js)"
uglifyjs --compress --mangle --pure-funcs --output $JS_FOLDER/main.js -- $JS_FOLDER/main.js
echo "size after $(stat -c %s $JS_FOLDER/main.js)"
echo "size before $(stat -c %s $JS_FOLDER/util.js)"
uglifyjs --compress --mangle --pure-funcs --output $JS_FOLDER/util.js -- $JS_FOLDER/util.js
echo "size after $(stat -c %s $JS_FOLDER/util.js)"
# optimise CSS
npm install -g clean-css
echo "size before $(stat -c %s $CSS_FOLDER/main.css)"
cleancss -o $CSS_FOLDER/main.css $CSS_FOLDER/main.css
echo "size after $(stat -c %s $CSS_FOLDER/main.css)"

apt-get update
apt-get install zip -y
zip -r $PRETTY_BUILD_FOLDER $BUILD_FILE
echo completed build: $BUILD_FILE