def cal_points(ops)
	score = []
	ops.each do |x|
		if x == 'C'
			score.pop
		elsif x =='D'
			score << score.last * 2
		elsif x == '+'
			score << score[-1] + score[-2]
		else
			score << x
		end
	end

	puts score.inspect
	puts score.sum
end

cal_points([5,2,'C', "D", "+"])