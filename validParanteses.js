var isValid = function(s) {
  let seen = []
  const hMap = {}
  
  for(var i = 0; i < s.length; i++) {
    if (s[i] == "[" || s[i] == "(" || s[i] == "{") {
      seen.push(s[i]);
    } else {
      if (seen.length == 0) { return false }
      var last = seen.pop();
      if (s[i] == ")" && last != "(" || s[i] == "}" && last != "{" || s[i] == "]" && last != "[") { return false }
    }
  }
  return seen.length == 0
};