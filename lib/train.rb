require "station"

class Train

	def initialize(station)
		@stationary = false
		@location = station
		@destination
	end

	def moving?
		@stationary
	end

	def location?
		@location
	end

	def traverse(origin,destination)
		@location, @destination= origin, destination
		@stationary = true
	end

	def dock!(destination)
		destination.allow_in!(self)
		@location = destination
		#might modify traverse to only operate on @destination
	end

end