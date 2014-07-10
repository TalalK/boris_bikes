require 'bike_container'

class Van
	 include BikeContainer

	 def collect_bikes_from(station)
	 	station.bikes.each {|bike|dock bike if bike.broken?}
	 end

	 def return_bikes_to(garage)
	 	garage.bikes.each {|bike|dock bike unless bike.broken?}
	 end
end