gulp = require 'gulp'
plugin = require('gulp-load-plugins')()
browserify = require 'browserify'
transform = require 'vinyl-transform'
babelify = require 'babelify'
sourceStream = require 'vinyl-source-stream'

module.exports = (obj) ->
  gulp.task obj.name, ->
    browserify obj.src
      .transform "babelify",
        presets: ['es2015']
      .bundle()
      .pipe sourceStream('app.js')
      .pipe plugin.streamify plugin.ngAnnotate()
      .pipe plugin.streamify plugin.uglify()
      .pipe gulp.dest obj.dest
