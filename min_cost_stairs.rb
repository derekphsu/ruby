def min_cost_climbing_stairs(cost)
	memo = {}
	steps(cost, 0, memo)
	[memo[0], memo[1]].min
end

def steps(cost, i, memo)
	return 0 if i >= cost.length 
	return memo[i] if memo[i]

	t1 = cost[i] + steps(cost, i + 1, memo)
	t2 = cost[i] + steps(cost, i + 2, memo)

	memo[i] = t1 < t2 ? t1 : t2
end



# def min_cost_climbing_stairs(cost) 
#     def step_through(cost, idx, memo)
#         return 0 if idx >= cost.length
#         return memo[idx] if memo.has_key?(idx)
        
#         t1 = cost[idx] + step_through(cost, idx+1, memo)
#         t2 = cost[idx] + step_through(cost, idx+2, memo)
#         memo[idx] = t1 < t2 ? t1 : t2
#     end
    
#     memo = {}
#     step_through(cost, 0, memo)
#     memo[0] < memo[1] ? memo[0] : memo[1]
# end

puts min_cost_climbing_stairs [1,15, 5]