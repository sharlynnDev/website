# TODO
```
remove api from localhost
favicon
passwords
flattern readme

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