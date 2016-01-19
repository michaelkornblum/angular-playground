gulp = require 'gulp'
plugin = require('gulp-load-plugins')()

module.exports = (obj) ->
  gulp.task 'watch:' + obj.name, ->
    gulp.src obj.watchDir
      .pipe plugin.watch obj.watchDir, ->
        gulp.start obj.name
