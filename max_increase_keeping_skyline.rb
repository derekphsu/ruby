# https://leetcode.com/problems/max-increase-to-keep-city-skyline/
def max_increase_keeping_skyline(grid)
  horizontal_max = []
  vertical_max = []
  
  grid.each do |row|
  	horizontal_max << row.max
  end

  i = 0
  while i < grid.length
  	column_max = []
  	j = 0
  	while j < grid.length
  		column_max << grid[j][i]
  		j += 1
  	end
  	vertical_max << column_max.max
  	i += 1
  end

  increase_height = 0
  grid.each_with_index do |column, i|
  	column.each_with_index do |cell, j|
  		proposed_new_height = [horizontal_max[i], vertical_max[j]].min
		  if proposed_new_height > cell
		  	increase_height += proposed_new_height - cell
		  end
  	end
  end
  increase_height
end

grid = [[3,0,8,4],[2,4,5,7],[9,2,6,3],[0,3,1,0]]

puts max_increase_keeping_skyline grid