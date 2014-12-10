require_relative 'bike_container'

class DockingStation

	include BikeContainer # this gives us all the methods that used to be in this class

 	DEFAULT_CAPACITY = 10 

	def initialize(options = {})
		self.capacity = options.fetch(:capacity, capacity)
	end
end
