require "van"

describe Van do
	let(:van) {Van.new}

	it "Should take broken bikes from docking station" do
		broken_bike = double :bike, broken?: true
		fixed_bike = double :bike, broken?: false
		station = double :station, bikes: [broken_bike, fixed_bike]
		van.collect_bikes_from(station)
		expect(van.bikes).to eq [broken_bike]
	end

end