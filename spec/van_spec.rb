require 'bike_container'
require 'van'

describe Van do

	let (:van) {Van.new(:capacity => 25)}

	it "should allow setting default capcity when initialized" do
		expect(van.capacity).to eq(25)
	end
end

