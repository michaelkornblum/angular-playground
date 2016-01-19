gulp = require 'gulp'

module.exports = (obj) ->
  gulp.task obj.name, ->
    gulp.src obj.src
      .pipe obj.proc()
      .pipe gulp.dest obj.dest
