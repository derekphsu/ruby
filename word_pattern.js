var wordPattern = function(pattern, s) {
  var a = {}
  s = s.split(" ")
  for (var i = 0; i < s.length; i++) {
  	console.log("a",a )
  	console.log("a[s[i]]", a[s[i]])
  	console.log("pattern[i]", pattern[i])

  	if (a[s[i]] && a[s[i]] != pattern[i]) {
  		return false
  	} else {
  		a[s[i]] = pattern[i]
  	}
  }

  return true
}

var pattern = "abba"
var s = "dog cat cat fish"


console.log(wordPattern(pattern, s))

// unfinished