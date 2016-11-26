JS_FOLDER=public/assets/js
CSS_FOLDER=public/css

echo "size before $(stat -c %s $JS_FOLDER/book.js)"
uglifyjs --compress --mangle --pure-funcs --output $JS_FOLDER/book.js -- $JS_FOLDER/book.js
echo "size after $(stat -c %s $JS_FOLDER/book.js)"
echo "size before $(stat -c %s $JS_FOLDER/main.js)"
uglifyjs --compress --mangle --pure-funcs --output $JS_FOLDER/main.js -- $JS_FOLDER/main.js
echo "size after $(stat -c %s $JS_FOLDER/main.js)"
echo "size before $(stat -c %s $JS_FOLDER/util.js)"
uglifyjs --compress --mangle --pure-funcs --output $JS_FOLDER/util.js -- $JS_FOLDER/util.js
echo "size after $(stat -c %s $JS_FOLDER/util.js)"


echo "size before $(stat -c %s $CSS_FOLDER/main.css)"
cleancss -o $CSS_FOLDER/main.css $CSS_FOLDER/main.css
echo "size after $(stat -c %s $CSS_FOLDER/main.css)"

# write to staging
echo "send to staging? [y/N]"
read staging
if [ "$staging" == "y" ]; then
    echo "user:"
    read user
    echo "domain:"
    read domain
    echo rsync -av --progress public/* "$user@$domain":/var/www/html
    # rsync -av --progress public/* "$user@$domain":/var/www/html
fi


