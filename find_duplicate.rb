# https://leetcode.com/problems/find-all-duplicates-in-an-array/
def find_duplicates(nums)
  num_hash = {}
  nums.each do |n|
  	if num_hash[n]
  		num_hash[n] += 1
  	else
  		num_hash[n] = 1
  	end
  end

	ans = []  

  num_hash.each do |k,v|
  	ans << k if v == 2
  end
  return ans
end

puts find_duplicates [4,3,2,7,8,2,3,1]