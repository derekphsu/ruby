var truncateSentence = function(s, k) {
  var arr = s.split(" ")
  arr = arr.slice(0,k)
  return arr.join(" ")
};