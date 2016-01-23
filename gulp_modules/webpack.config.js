var webpack = require('webpack');

module.exports = {
  entry: "./scripts/app.js",
  output: {
    filename: "bundle.js"
  },
  module: {
    preLoaders: [
      {
        test: /\.$js/,
        exclude: /node_modules/,
        loader: 'jshint-loader'
      }
    ],
    loaders: [
      {
        test: /\.js$/,
        exclude: /node_modules/,
        loader: 'babel-loader',
        query: {
          cacheDirectory: true,
          presets: ['es2015']
        }
      }
    ]
  },
  plugins: [
    new webpack.optimize.UglifyJsPlugin()
  ],
  resolve: {
    extensions: ['', '.js']
  }
}
