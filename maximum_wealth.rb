# https://leetcode.com/problems/richest-customer-wealth/ easy
def maximum_wealth(accounts)
	max = 0
	accounts.each do |account|
		sum = account.sum
		max = sum if sum > max
	end
	return max
end