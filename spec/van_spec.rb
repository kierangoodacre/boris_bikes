require 'bike_container'
require 'van'
require 'docking_station'
require 'bike'

describe Van do

	let (:van) {Van.new(:capacity => 25)}
	let (:station) {DockingStation.new(:capacity => 30)}
	let (:bike) {Bike.new}

	it "should allow setting default capcity when initialized" do
		expect(van.capacity).to eq(25)
	end

	# it "should be able to take broken bikes from the station" do
	# 	bike.break!
	# 	station.dock(bike)
	# 	expect(van.pick_up(bike)).to eq([bike])
	# end


end

