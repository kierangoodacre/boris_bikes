require_relative 'bike_container'

class Van

	include BikeContainer

	DEFAULT_CAPACITY = 25

	def initialize(options = {})
		self.capacity = options.fetch(:capacity, capacity)
	end

	# def pick_up(bike)
	# 	broken_bikes.each { |bike| van.dock(bike)}
	# end

end
