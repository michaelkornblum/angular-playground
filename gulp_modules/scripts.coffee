gulp = require 'gulp'
plugin = require('gulp-load-plugins')()
lazypipe = require 'lazypipe'
task = require './task.coffee'
watch = require './watch.coffee'

obj =
  name : 'scripts',
  src : './scripts/app.js'
  proc : lazypipe()
    .pipe plugin.webpack, require('./webpack.config.js')
  dest : './build/scripts/'
  watchDir : './scripts/**/*'

task obj
watch obj
