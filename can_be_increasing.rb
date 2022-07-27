def can_be_increasing(nums)
  num_errors = 0
  previous = nums[0] 
  j = 1

  while j < nums.length    
    if previous < nums[j]
      previous = nums[j]
    else
      num_errors += 1
      previous = nums[j - 2]
    end
      j += 1
      return false if num_errors == 2
  end

  true
end
puts can_be_increasing [1,2,10,5,7]