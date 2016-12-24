[![Build Status](https://travis-ci.org/sharlynnDev/website.svg?branch=master)](https://travis-ci.org/sharlynnDev/website)

# Users

## make a blog post

* Log into forestry.io (or domain/admin) to edit pages, posts, menu's.
* forestry has write access to github.  On CMS edit it will add posts/edits/changes to source.
* [Build](Build)
* [Deploy](Deploy)

# Build

## Travis

Travis ci automatically sets up an environment ready for builds

* ruby environment
* docker service
* pass to jekyllBuild.sh inside of docker

## Docker

starefossen/ruby-node base, dependencies include (jekyllBuild.sh):

* Gemfile inclusions (bundle install)
* node: uglify
* node: cleancss
* build artifacts (zip)

# Deploy

see deploy.sh

# Orchestration

* ansible
* raptr coreOS
    * nginx
    * build artifact reciever
    * letsencrypt client

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

# Testing gitlab

sudo docker pull jekyll/jekyll
sudo docker run jekyll/jekyll jekyll new myblog