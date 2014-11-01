
class Passenger

#Object constructor
	def initialize(name, account)
		@name = name
		@account = account
		@check_in_status = false
		@origin
		@destination
		@boarded_status = false
	end

#Attribute Accessors
	def checked_in?
		@check_in_status
	end

	def account_balance
		@account
	end

	def check_into(station)
		station.check_in!(self)
		@check_in_status = true
	end

	def check_out_of(station)
		station.check_out!(self)
		@check_in_status = false
	end

	def pay_fare!(ticket_fare)
		@account = @account - ticket_fare
		return ticket_fare
	end

	def top_up!(cash)
		@account = @account + cash
		return true
	end

	def boarded?
		@boarded_status
	end

	def board(train)
		train.take_in(self)
		@boarded_status = true
	end

	def dismount(train)
		train.let_out(self)
		@boarded_status = false
	end
end




=begin  
Methods that need to be defined in other classes:
Station:
	.check_in!(passenger)
	.check_out!(passenger)
=end  


=begin  
TO_DO!
- make pay_fare more robust (what if balance < ticket_fare)
=end







#Cut from check_into(station)
		# @check_in_status = true
		# @checked_in_status = station.check_in!
		# @checked_in_status = true