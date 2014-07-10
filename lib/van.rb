require 'bike_container'

class Van
	 include BikeContainer

	 def collect_bikes_from(station)
	 	station.bikes.each {|bike|dock bike if bike.broken?}
	 end

	 def collect_bikes_from(station)
	 	station.bikes.each {|bike|dock bike if bike.fixed?}
	 end



end