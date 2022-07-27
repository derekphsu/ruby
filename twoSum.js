// https://leetcode.com/problems/two-sum/
var twoSum = function(nums, target) {
  var hMap = {}

  nums.forEach((num, i) => {
  	console.log("map", hMap)
  	console.log("hMap[target - num]", hMap[target - num])
  	if (hMap[target - num] != undefined){
  		return [hMap[target - num], i]
  	} else {
  		hMap[num] = i
  	}
  })
};
