# https://leetcode.com/problems/find-triangular-sum-of-an-array/submissions/
def triangular_sum(nums)
	return nums.first if nums.length == 1
  while nums.length > 1
    temp_array = []
    left = nil
    nums.each do |num|
    	if left
    		temp_array << ((left + num) % 10) 
    	end
    	left = num
    end
    nums = temp_array 
 	end

 	return temp_array.first
end