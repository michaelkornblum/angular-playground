module.exports = function(scope, elem, attrs) {
  elem.on("touchstart", "touchend", function(){
    scope.$apply(attrs["tap"]);
  });
}
