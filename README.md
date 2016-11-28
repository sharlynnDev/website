# Blog Post

* Log into forestry.io (or domain/admin) to edit pages, posts, menu's.
* forestry has write access to gitlab.  On CMS edit it will add posts/edits/changes to source.
* [Build](Build)
* [Deploy](Deploy)


# Build

* dependencies install
* uglify js
* cleancss
* zip to build.zip
* release to github (deploy) or get to localhost *(how*?)

## Travis

Travis ci automatically sets up an environment ready for builds

* ruby environment
* bundle install
* docker service

## Docker

starefossen/ruby-node base, dependencies include (jekyllBuild.sh):

* Gemfile inclusions (bundle install)
* node: uglify
* node: cleancss
* zip

# Orchestration

* sharlynn.com.au
* raptr coreOS
    * nginx
    * github webhook reciever
    * letsencrypt client

# Deploy

* webhook sharlynn.com.au
    * update to $REF
                * download release
                * unzip to /var/www

# Local development with docker

* cd to folder
* localbuild.sh

# TODO

* how to inject api key's safely (https://docs.travis-ci.com/user/encryption-keys/)
* https://github.com/dimsemenov/PhotoSwipe gallery

# Reasoning

* why use docker?
    * using travis ci without docker will give me a version of nodejs and ruby that I don't want
* why not containers in production?
    * it may be more immutable to have reverse proxy nginx handling letsencrypt and proxying to coreos/nginx A/B for no down time.  Low reward high effort.
    * Use vps and orchestrate with ansible until lets ecrypt works better with containers 