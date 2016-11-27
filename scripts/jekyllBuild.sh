#!/bin/sh

BUILD_FILE="builds/minified.zip"
UNMINIFIED_FOLDER="builds/unminified"
JS_FOLDER="$UNMINIFIED_FOLDER/assets/js"
CSS_FOLDER="$UNMINIFIED_FOLDER/css"
MINIFIED_FOLDER="builds/minified"

jekyll build  --source web/ --destination "$UNMINIFIED_FOLDER"

# optismise JS
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

mv $UNMINIFIED_FOLDER $MINIFIED_FOLDER
zip -r $MINIFIED_FOLDER 