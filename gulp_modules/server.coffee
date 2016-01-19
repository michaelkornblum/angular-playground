gulp = require 'gulp',
browserSync = require('browser-sync').create()

gulp.task 'server', ->
  browserSync.init
    server :
      baseDir: './build'

  gulp.watch './build/**/*', browserSync.reload
