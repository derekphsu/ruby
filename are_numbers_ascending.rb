# https://leetcode.com/problems/check-if-numbers-are-ascending-in-a-sentence/
def are_numbers_ascending(s)
  arr = s.scan(/[0-9]+/).map(&:to_i)
  last = arr[0] - 1

  arr.each do |a|
  	return false if a <= last
  	last = a
  end

  return true
end