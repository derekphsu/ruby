class Redis
	attr_accessor :list

	def initialize
		@list = list
	end

  def get(k)
  	@list[k]
  end

  def set(k,v)
  	@list[k] = v
  end

  def list
  	@list || {}
  end
end

# puts Redis.new
redis = Redis.new
redis.set("hello", "world")
puts redis.get('hello')

# local method takes priority
# CSV.open()

# atom can open csv file



def summons
	# 20 summons per gold transmit, 6 transmit a ml summon
	# 75 5* rgb hero in game
	total_summons = 40000 * 20 * 6
  
end

4800000