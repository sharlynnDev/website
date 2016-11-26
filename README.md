# Deployment

1. install rvm (https://rvm.io/rvm/install)
2. install RVM stable with ruby at above address
3. install rubygems (gem update --system)
4. install bundler (gem install bundler)
5. install jekyll (gem install jekyll)

# Development with docker



# Editing

* Log into forestry.io to edit pages, posts, menu's.
* forestry has write access to gitlab.  On CMS edit it will add posts/edits/changes to source.
* on edit gitlab cli will run plugins and build (see .gitlab.ci.yml)
* on build success gitlab will (do i write _site to new branch?)
* on build success gitlab will webhook to sharlynn.com.au:8000
* https://github.com/olipo186/Git-Auto-Deploy will recieve the hook and pull gitlab/sharlynn/(_site branch)
* archive 100mb of previous websites, log the diff, write to /var/www