// https://leetcode.com/problems/shuffle-string/discuss/?currentPage=1&orderBy=most_relevant&query=javascript
var restoreString = function(s, indices) {
  var ans = []
  for (var i = 0; i < indices.length; i++) {
  	ans[indices[i]] = s[i]
  }

  return ans.join("");
};

abc 0123

a 0