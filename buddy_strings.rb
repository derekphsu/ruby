# https://leetcode.com/problems/buddy-strings/
def buddy_strings(s, goal)
  s_match = {}
  goal_match = {}
  s_mismatch = {}  
  goal_mismatch = {}
  mismatches = 0
  i = 0

  return false if s.length != goal.length

  while i < s.length
  	if s[i] == goal[i]
  		s_match[s[i]] ? s_match[s[i]] += 1 : s_match[s[i]] = 1
  		goal_match[goal[i]] ? goal_match[goal[i]] += 1 : goal_match[goal[i]] = 1 
  	else
  		s_mismatch[s[i]] = true
  		goal_mismatch[goal[i]] = true
  		mismatches += 1
  	end
  	i += 1
  end

  return false if mismatches > 2
  
  if mismatches > 0
  	return s_mismatch.keys.sort == goal_mismatch.keys.sort
  else
  	goal_match.each do |k,v|
  		return true if v > 1
  	end
  end

  return false
end

puts buddy_strings("ab", "ab")