---
title: Testing Forestry Integration
date: '2016-11-26 11:19:02'
layout: post
---
This is a new blog post that I've created using forestry.io.  It has unrestricted access to sharlynnDev organisation.  

Although I would prefer to use gitlab, forestry can't import via gitlab at the moment.

On committ, travis CI will build and test, then webhook to example.com/webhook, which will pull git@website:branch=build