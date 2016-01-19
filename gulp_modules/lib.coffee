task = require './move-task.coffee'
lazypipe = require 'lazypipe'
watch = require './watch.coffee'

obj =
  name : 'lib',
  src :  './lib/**/*'
  dest : './build/lib/'
  watchDir : './lib/**/*'

task obj
watch obj
