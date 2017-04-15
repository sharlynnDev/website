# TODO
```

www cloudfront has to be alias'd to new distro
naked domain s3 has to be redirected to www.sharlynn.com.au
check all ttl dns settings

cache busting required?
favicon
passwords
flattern readme
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="{{ site.baseurl }}/apple-touch-icon-144-precomposed.png">
<link rel="shortcut icon" href="{{ site.baseurl }}/favicon.ico">

bfg cleanup of images in _posts
bfg cleanup of all images

blog--
search function blog
recent posts (6)
paginator
6 posts to a page
--
```

# Orchestration

* github + forestry + S3 + Cloudfront + Route53
* check handover document for more information

# Local Dev

```bash
# gpg from https://rvm.io/rvm/install
curl -sSL https://get.rvm.io | bash -s stable
source /home/matt/.rvm/scripts/rvm
rvm requirements
rvm list known
rvm install 2.4
rvm use 2.4 --default 
ruby --version
gem install bundle jekyll
cd $src/website/web
bundle exec jekyll serve
```