gulp = require 'gulp'
plugin = require('gulp-load-plugins')()
task = require './task.coffee'
lazypipe = require 'lazypipe'
watch = require './watch.coffee'

obj =
  name : 'images'
  src :  './images/*'
  proc : lazypipe()
    .pipe plugin.imagemin,
      optimizationLevel: 3
      progressive: true
      interlaced: true
  dest : './build/images'
  watchDir : './images/*'

task obj
watch obj
