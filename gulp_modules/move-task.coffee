gulp = require 'gulp'

module.exports = (obj) ->
  gulp.task obj.name, ->
    gulp.src obj.src
      .pipe gulp.dest obj.dest
