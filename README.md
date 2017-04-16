sharlynn.com.au website.  The website uses jekyll to create a static website.  Forestry.io provides the CMS.  S3 for hosting, with Cloudfront as a CDN.  Lambda functions are used for cache invalidation.  Made for my family, with love from [Matthew](https://github.com/derooy).

Images and icons are not to be used without permission from stay@sharlynn.com.au

The theme requires licensing from [Pixelarity](https://pixelarity.com/)

# Orchestration

* github + forestry + S3 + Cloudfront + Route53 + lambda
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

# TODO

* cache invalidation
* passwords
* flattern readme

* bfg cleanup of images in _posts
* bfg cleanup of all images

* search function blog
* recent posts (6)
* paginator
