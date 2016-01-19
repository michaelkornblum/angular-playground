require('angular').module('exampleApp')
  .value("nowValue", new Date())
  .service("days", ["nowValue", require('./days')]);
