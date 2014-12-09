require 'bike'

describe Bike do
	it "should not be broken after we create " do
	the_bike = Bike.new
	expect(the_bike).not_to be_broken # expect() object under test as an argument and returns special object, that has different methods, that make it pass or fail, depending on the arguments 
 end
end
