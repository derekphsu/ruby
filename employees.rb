# https://leetcode.com/discuss/interview-question/2252647/A-coding-question-from-startup-company

# def list_employees(leader)
# 	emp_array = [leader]
#   seen = {}
#   ans = []

# 	tree = {
# 	  "Jane Mayer" => ["Baraka Tumuti", "Sarah Lee", "David Heinsburg"],
# 	  "Baraka Tumuti" => ["Abida Begum"],
# 	  "Sarah Lee" => ["David Gibbly", "Kelsey Hamming"],
# 	  "David Heinsburg" => [],
# 	  "Abida Begum" => ["Dave Bunt", "James Ray"],
# 	  "David Gibbly" => [],
# 	  "Kelsey Hamming" => [],
# 	  "Dave Bunt" => [],
# 	  "James Ray" => []
# 	}

#   emp_array.each do |emp_name|
#   	puts "emp_name #{emp_name}"
#     if !seen[emp_name]
#     	ans << emp_name
#     	seen[emp_name] = true
#     	(emp_array << tree[emp_name]).flatten!
#     end
#   end

#   ans.inspect
# end


# puts list_employees "Abida Begum"







def obj_id
	a = ["a"]
	b = ["b"]
	c = ["c"]
	i = 0

	a.each do |x|
		puts a.object_id
		a << b
		puts a.object_id
		i += 1
		return if i > 3
	end
end


def obj_id2
	i = 0

	while i < 3

		puts a.object_id
		i += 1
	end
end

obj_id