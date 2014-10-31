class Passenger

#Object constructor
	def initialize(name, account)
		@name = name
		@account = account
		@check_in_status = false
		@origin
		@destination
	end

#Attribute Accessors
	def checked_in?
		@check_in_status
	end

	def account_balance
		@account
	end

	def check_into(station)
		@check_in_status = true
		# @checked_in_status = station.check_in!
		# @checked_in_status = true
	end


end
