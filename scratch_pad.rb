require 'uri'
require 'net/http'


def curling
	uri = URI("https://pokeapi.co/api/v2/pokemon/ditto")
	res = Net::HTTP.get_response(uri)
	puts res.is_a?(Net::HTTPError)
	puts res.get_response
<<<<<<< HEAD
	puts "random2"
=======
	puts "random"
>>>>>>> 0df2cd1 (testing)
	# puts res.body
	# puts res.is_a?(Net::HTTPError)
end

curling

# https://16ddl.mocklab.io/