gulp = require 'gulp'
plugin = require('gulp-load-plugins')()
typographic = require 'typographic'
lost = require 'lost'
rupture = require 'rupture'
task = require './task.coffee'
lazypipe = require 'lazypipe'
watch = require './watch.coffee'

obj =
  name : 'styles',
  src :  'styles/main.styl'
  proc : lazypipe()
    .pipe plugin.stylus,
      use : [
        rupture(),
        typographic()
      ]
    .pipe plugin.postcss, [lost()]
    .pipe plugin.csso
  dest : './build/styles/'
  watchDir : './styles/**/*'

task obj
watch obj
