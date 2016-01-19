module.exports = function (nowValue) {
  this.today = nowValue.getDay();
  this.tomorrow = this.today + 1;
}
