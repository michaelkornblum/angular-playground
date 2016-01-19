gulp = require 'gulp'
runSequence = require 'run-sequence'

gulp.task 'default', ['watcher', 'server']
