# Users

## make a blog post

* Log into forestry.io (or domain/admin) to edit pages, posts, menu's.
* forestry has access to github, and IAM access to S3

# Orchestration

* S3 + Cloudfront + Route53

# TODO

* little hotelier or sirvoy.com.au
* encrypt secrets somehow
* https://github.com/dimsemenov/PhotoSwipe gallery

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

# Reasoning