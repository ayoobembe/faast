class Passenger

	def initialize(name, account)
		@name = name
		@account = account
		@check_in_status = false
		@origin
		@destination
	end

	def checked_in?
		@check_in_status
	end

end
