require 'bike_container'

class Garage
	include BikeContainer

	def take_bikes_from(van)
		van.bikes.each do |bike|
			dock(bike)
		end
	end

	def fix_all_broken_bikes
		bikes.each do |bike|
			bike.fix!
		end
	end
end