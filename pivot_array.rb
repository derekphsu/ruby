# https://leetcode.com/problems/partition-array-according-to-given-pivot/
def pivot_array(nums, pivot)
  left = []
  right = []
  pivot_arr = []

  nums.each do |n|
  	if n == pivot
  		pivot_arr << n
  	elsif n < pivot
  		left << n
  	else
  		right << n
  	end 
  end

  return left + pivot_arr + right
end