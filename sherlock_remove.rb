def isValid(s)
	s_map = {}
	i = 0  
	while i < s.length
		s_map[s[i]] = (s_map[s[i]] || 0) + 1
		i += 1
	end

	number_count = {}
	j = 0

	s_map.each do |k, v|
		number_count[v] = (number_count[v] || 0) + 1
	end

	return false if number_count.size > 2
	return "NO" if number_count.keys.reduce(:-).abs != 1 
	return "NO" if number_count.values.min != 1
	return "YES"
end