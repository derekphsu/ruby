# https://leetcode.com/problems/sorting-the-sentence/
def sort_sentence(s)
	new_string = s.split(" ")
	h_map = {}

	new_string.each do |word|
		number = word[-1].to_i
		sanitized_word = word[0..word.length - 2]
		h_map[number] = sanitized_word
	end

	i = 1
	
	ans = []
	until i > new_string.length
		ans << h_map[i]
		i += 1
	end

	return ans.join(" ")
end
