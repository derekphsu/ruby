# https://leetcode.com/problems/plus-one/
def plus_one(digits)
  i = digits.length - 1
  while i >= 0
  	puts "loop"
  	if i == 0 && digits[i] == 9
  		digits[i] = [1,0]
  		digits.flatten!
  		return digits.inspect
  	elsif digits[i] == 9
  		puts "do i not get here?"
  		digits[i] = 0
  		puts digits.inspect
  		i -= 1
  	else
  		digits[i] += 1
  		return digits
  	end
  end
end

puts plus_one [9,9]