require_relative 'bike_container'

class Garage

	include BikeContainer

	DEFAULT_CAPACITY = 25

	def initialize(options = {})
		self.capacity = options.fetch(:capacity, capacity)
	end

end