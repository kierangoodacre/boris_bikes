require './lib/bike_container'

class ContainerHolder; include BikeContainer; end

describe BikeContainer do 
	let(:bike) {Bike.new}
    let(:holder) { ContainerHolder.new }

    def fill_holder(number_of_times, holder)
		number_of_times.times {holder.dock(bike)}  #defined number of bikes
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
		fill_holder(10, holder)
		expect(holder).to be_full
	end

	it "shouldn\'t accept the bike if the holder is full" do
		fill_holder(10, holder)
		expect(lambda {holder.dock(bike)}).to raise_error(RuntimeError, "Holder is full") #this should be Holder?
		
	end

	it "should provide the list of available bikes" do
		broken_bike, working_bike = Bike.new, Bike.new
		broken_bike.break!
		holder.dock(working_bike)
		holder.dock(broken_bike)
		expect(holder.available_bikes).to eq([working_bike])
	end

	it "should know when it is empty" do
		fill_holder(0, holder)
		expect(holder).to be_empty
	end

	it "should return error when no bikes to release" do
		fill_holder(0,holder)
		expect(lambda {holder.release(bike)}).to raise_error(RuntimeError, "Holder is empty")
	end

	it "should give error message when there is not object" do 
		fill_holder(10,holder)
		expect(lambda {holder.release('banana')}).to raise_error(RuntimeError, "banana is not a bike")
	end

	it "It should provide a list of broken bikes" do
		working_bike, broken_bike = Bike.new, Bike.new
		broken_bike.break!
		holder.dock(broken_bike)
		holder.dock(working_bike)
		expect(holder.broken_bikes).to eq([broken_bike])
	end

	# it "Should only be able to dock bikes" do
	# 	expect(lambda {holder.dock('banana')}).to raise_error(RuntimeError, "banana is not a bike")
	# end

end