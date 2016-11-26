# Deployment

1. install rvm (https://rvm.io/rvm/install)
2. install RVM stable with ruby at above address
3. install rubygems (gem update --system)
4. install bundler (gem install bundler)
5. install jekyll (gem install jekyll)

# Development with docker

TODO

# TODO

* how to inject api key's safely (https://docs.travis-ci.com/user/encryption-keys/)

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