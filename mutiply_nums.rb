# https://leetcode.com/problems/multiply-strings/
def multiply(num1, num2)
  first = string_to_num(num1)
  second = string_to_num(num2)
  first * second
end

def string_to_num(num)
	convert = {
		"0":0,
		"1":1,
		"2":2,
		"3":3,
		"4":4,
		"5":5,
		"6":6,
		"7":7,
		"8":8,
		"9":9
	}

	num.split("").map{|s| convert[s]}.join("")
end