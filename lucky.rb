# def find_lucky(arr)
# 	hmap={}
# 	max = -1
# 	arr.each do |x|
# 		if hmap[x]
# 			hmap[x] += 1
# 		else 
# 			hmap[x] = 1
# 		end
# 	end

# 	hmap.each do |k, v| 
# 		if k == v
# 			max = k if k > max
# 		end
# 	end

# 	puts max
# end

# find_lucky([2,2,3,4])
# find_lucky([1,1,1,2,3])
# find_lucky([3,3,3,2,2,4 ,4 ,4 ,4])
# find_lucky([-1,-1,-1, 4])



# def solution(message, k)
#   # write your code in Ruby 2.2

#   arr = message.split(" ")
#   new_ans = []
#   current = 0
#   arr.each do |a|
#     if current + a.length < k
#       new_ans << a
#       current += a.length + 1
#     else
#       puts new_ans.join(" ")
#     end
#   end

#   puts new_ans.join(" ")
# end


# solution('The quick brown fox jumps over the lazy dog', 39)





def solution(a)
  # write your code in Ruby 2.2

  max_first = a.sort! {|x, y| y <=> x}
  total = a.inject(:+)
  current_pollution = total
  current_cycle = 0 
  top_pointer = 0
  half = []
  half_pointer = 0

  while current_pollution * 2 > total
  	puts half.inspect
  	puts max_first.inspect
    if half.empty? || max_first[top_pointer] > half[half_pointer]
      half_pollution = max_first[top_pointer]/2.to_f
      current_pollution -= half_pollution
      half << half_pollution
      top_pointer +=1
    else
      half_pollution = half[half_pointer]/2.to_f
      current_pollution -= half_pollution
      if half.count > 1 && half[half_pointer] > half[half_pointer + 1]
        half[half_pointer] = half_pollution
      else 
        half << half_pollution
        half_pointer += 1
      end
    end

    current_cycle += 1
  end

  puts current_cycle
end

solution([5, 19, 8, 1])
