module.exports = function (nowValue) {
  this.today = nowValue.getDay();
  this.tomorrow = nowValue.getDay() + 1;
}
