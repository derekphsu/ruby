# https://leetcode.com/problems/number-of-laser-beams-in-a-bank/
# @param {String[]} bank
# @return {Integer}
def number_of_beams(bank)
	previous = 0
	total = 0
  bank.each do |lasers|
  	count = 0
  	lasers.split("").each do |letter|
  		count +=1 if letter == "1" 
  	end

  	if count != 0
  		total += previous * count
  		previous = count 
  	end
  end 

  return total
end

puts number_of_beams(["011001","000000","010100","001000"])
