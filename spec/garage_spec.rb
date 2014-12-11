require 'bike_container'
require 'garage'


describe Garage do

	let (:garage) {Garage.new(:capacity => 25)}

	it "should have a default capacity when initialised" do
	expect(garage.capacity).to eq(25)
	end
end
