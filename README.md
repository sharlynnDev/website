# Editing a blog post

* Log into forestry.io (or domain/admin) to edit pages, posts, menu's.
* forestry has write access to gitlab.  On CMS edit it will add posts/edits/changes to source.
* [Build](Build)
* build my own docker image, because otherwise have to bundle install inside the container


on edit travis ci will run plugins and build (see .gitlab.ci.yml)
    * pull official jekyll docker image
    * exec bundler jekyll build
    * run optimise script
        * uglify-js (on all non-lib files)
        * cleancss (on all css files)
        * store build artifacts
        * move artifacts into build
    * move build to branch "site"
    * run deploy script
        * get encrypted APIkey's/passwords
        * webhook to sharlynn.com.au/webhook/deploy
* https://github.com/olipo186/Git-Auto-Deploy will recieve the hook and pull gitlab/sharlynn/(_site branch)
* archive 100mb of previous websites, log the diff, write to /var/www

## Minify
# Continuous Integration

1. install rvm (https://rvm.io/rvm/install)
2. install RVM stable with ruby at above address
3. install rubygems (gem update --system)
4. install bundler (gem install bundler)
5. install jekyll (gem install jekyll)

# Local development with docker

TODO

# TODO

* how to hold artifacts
    * either travis built in s3 upload or write to site branch
* how to inject api key's safely (https://docs.travis-ci.com/user/encryption-keys/)
* https://github.com/dimsemenov/PhotoSwipe gallery

# Editing

* Log into forestry.io (or domain/admin) to edit pages, posts, menu's.
* forestry has write access to gitlab.  On CMS edit it will add posts/edits/changes to source.
* on edit travis ci will run plugins and build (see .gitlab.ci.yml)
    * pull official jekyll docker image
    * exec bundler jekyll build
    * run optimise script
        * uglify-js (on all non-lib files)
        * cleancss (on all css files)
        * store build artifacts
        * move artifacts into build
    * move build to branch "site"
    * run deploy script
        * get encrypted APIkey's/passwords
        * webhook to sharlynn.com.au/webhook/deploy
* https://github.com/olipo186/Git-Auto-Deploy will recieve the hook and pull gitlab/sharlynn/(_site branch)
* archive 100mb of previous websites, log the diff, write to /var/www

# Reasoning

* why use docker?
    * using travis ci without docker will give me a version of nodejs and ruby that I don't want

* why not containers in production?
    * it may be more immutable to have reverse proxy nginx handling letsencrypt and proxying to coreos/nginx A/B for no down time.  Low reward high effort.
    * Use vps and orchestrate with ansible until lets ecrypt works better with containers 