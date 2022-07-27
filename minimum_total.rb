def minimum_total(triangle)
  total = 0
  triangle.each do |group|
  	current_min = nil

  	group.each do |num|
  		current_min = num if current_min.nil? || current_min > num
  	end

  	total += current_min
  end 

  return total
end