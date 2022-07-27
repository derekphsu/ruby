# https://leetcode.com/problems/happy-number/
def is_happy(n)
	seen = {}
	until n == 1 || seen[n]
		seen[n] = true
  	n = n.to_s.split("").map!{|x| x.to_i * x.to_i }.sum
	end

	n == 1 ? true : false
end

puts is_happy 19