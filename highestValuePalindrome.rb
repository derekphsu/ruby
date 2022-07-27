# https://www.hackerrank.com/challenges/richie-rich/problem?utm_campaign=challenge-recommendation&utm_medium=email&utm_source=24-hour-campaign
# def highestValuePalindrome(s, n, k)
#   count_mismatch = []

#   i = 0
#   while i < s.length/2
  	
#   	i += 1
#   end
# end


# def build_word_tree_from_sentences(sentence_list)
#   root = {}
#   sentence_list.each do |sentence|
#     base = root
#     sentence.split.each do |word|
#       if !base[word]
#         base[word] = {}
#       end
#       base = base[word]
#     end
#   end
#   puts  root
# end

# puts build_word_tree_from_sentences(["Hello world", "Hello there"])



# def collapse_consecutive_repeats(str)
#   seen = {}
#   accumulator = ""
#   str.split("").each do |char|
#     if !seen[char]
#       accumulator = accumulator + char
#     end
#     seen[char] = true
#   end
#   return accumulator
# end

# puts collapse_consecutive_repeats "abate"



def mystery_function(input_str)
  i = input_str.length
  accumulator = ""
  while i >= 0
    accumulator = input_str[input_str.length - i] + accumulator
    i = i - 1
  end
  return accumulator
end

mystery_function("abcde")
