require './lib/bike_container'

class ContainerHolder; include BikeContainer; end

describe BikeContainer do 
	let(:bike) {Bike.new}
    let(:holder) { ContainerHolder.new }

    def fill_holder(holder)
		10.times {holder.dock(bike)}
	end


  	it "should accept a bike" do
		expect(holder.bike_count).to eq(0)
		holder.dock(bike)
		expect(holder.bike_count).to eq(1)
	end

	it "should release a bike" do
		holder.dock(bike)
		holder.release(bike)
		expect(holder.bike_count).to eq(0)
	end

	it "should know when it is full" do
		expect(holder).not_to be_full
		fill_holder(holder)
		expect(holder).to be_full
	end

	it "shouldn\'t accept the bike if the holder is full" do
		fill_holder(holder)
		expect(lambda {holder.dock(bike)}).to raise_error(RuntimeError, "Holder is full") #this should be Holder?
		
	end

	it "should provide the list of available bikes" do
		broken_bike, working_bike = Bike.new, Bike.new
		broken_bike.break!
		holder.dock(working_bike)
		holder.dock(broken_bike)
		expect(holder.available_bikes).to eq([working_bike])
	end
end