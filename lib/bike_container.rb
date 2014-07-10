require './lib/bike'

module BikeContainer

	DEFAULT_CAPACITY = 10

	def bikes
		@bikes ||= []
	end

	def capacity
		@capacity ||= DEFAULT_CAPACITY
	end

	def capacity=(value)
		@capacity = value
	end

	def bike_count
		bikes.count
	end
	
	def dock(bike)
		raise "Station is full" if full?
		raise "This station only provides bikes" if !bike.instance_of?(Bike)
		bikes << bike
	end

	def release(bike = nil)
		raise "There is no bike!" unless bikes.include?bike
		bikes.delete(bike)
	end

	def full?
		bike_count == capacity
	end

	def available_bikes
		bikes.reject { |bike| bike.broken? }
	end
end
