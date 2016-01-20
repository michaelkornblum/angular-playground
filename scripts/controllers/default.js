module.exports = function($scope) {
  $scope.data = {};

  $scope.todos = [
    {
      action: "Get groceries",
      complete: false
    },
    {
      action: "Call plumber",
      complete: false
    },
    {
      action: "Buy running shoes",
      complete: true
    },
    {
      action: "Buy flowers",
      complete: false
    },
    {
      action: "Call family",
      complete: false
    }
  ];

  $scope.viewFile = function() {
    return $scope.showList ? "views/list.html" : "views/table.html";
  };

  $scope.reportChange = function() {
    console.log("Displayed content: " + $scope.viewFile());
  }
}
