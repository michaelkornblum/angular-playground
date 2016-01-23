angular.module('exampleApp')
  .controller('TodayCtrl', ['$scope', 'days', require('./today')])
  .controller('TomorrowCtrl', ['$scope', 'days', require('./tomorrow')]);
