require 'uri'
require 'net/http'


def curling
	uri = URI("https://pokeapi.co/api/v2/pokemon/ditto")
	res = Net::HTTP.get_response(uri)
	puts res.methods
	puts res.get_response
	# puts res.body
	# puts res.is_a?(Net::HTTPError)
end

curling

# https://16ddl.mocklab.io/