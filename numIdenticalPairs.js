var numIdenticalPairs = function(nums) {
  var nums_hash = {}

  nums.forEach((num) => {
  	if(nums_hash[num] != undefined) {
  		nums_hash[num]++
  	} else {
  		nums_hash[num] = 0 
  	}

  })

  var values = 0

  for (key in nums_hash) {
  	values = values + (nums_hash[key]*nums_hash[key] + nums_hash[key])/2
  }

  return values
};

console.log(numIdenticalPairs([1,2,3,1,1,3]))