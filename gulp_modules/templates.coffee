gulp = require 'gulp'
plugin = require('gulp-load-plugins')()
task = require './task.coffee'
lazypipe = require 'lazypipe'
watch = require './watch.coffee'

obj =
  name : 'templates',
  src :  [
    './templates/**/*.jade',
    '!templates/layouts/**/*.jade'
  ]
  proc : lazypipe()
    .pipe plugin.jade, 
      pretty: true
  dest : './build/'
  watchDir : './templates/**/*'

task obj
watch obj
