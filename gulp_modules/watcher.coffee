gulp = require 'gulp'

gulp.task 'watcher', [
  'watch:images',
  'watch:scripts',
  'watch:styles',
  'watch:templates'
  'watch:lib'
]
