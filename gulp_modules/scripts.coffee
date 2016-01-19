gulp = require 'gulp'
plugin = require('gulp-load-plugins')()
lazypipe = require 'lazypipe'
task = require './script-task.coffee'
watch = require './watch.coffee'

obj =
  name : 'scripts',
  src : './scripts/app.js'
  dest : './build/scripts/'
  watchDir : './scripts/**/*'

task obj
watch obj
