require 'docking_station'
require 'bike'

describe DockingStation do

	let(:station) { DockingStation.new(:capacity => 123)}

	it "should allow setting default capacity on initializing" do
		expect(station.capacity).to eq(123)
	end
end

