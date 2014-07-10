require "garage"

describe Garage do
	let(:garage) { Garage.new }

	it "take bikes from a van" do
		bike = double :bike
		van = double :van, bikes: [bike]
		garage.take_bikes_from(van)
		expect(garage.bikes).to eq [bike]
	end

	it 'fixes the broken bikes it takes from a van' do 
		broken_bike = double :bike, broken?: true
		van = double :van, bikes: [broken_bike] 
		garage.take_bikes_from(van)
		expect(broken_bike).to receive(:fix!)
		garage.fix_all_broken_bikes
	end

end