require 'passenger'

class Coach

	def initialize
		@passengers = []
		@empty_status = @passengers.empty?
		@number_of_passengers #= @passengers.count
	end

	def is_empty?
		@empty_status
	end

	def passengers_num
		@passengers.count
	end

	def accept(new_passenger)
		@passengers.push(new_passenger)
		true
	end

	def release(onboard_passenger)
		#@passengers.pop(onboard_passenger)
		return true
	end

end            


=begin  
remove variable take in from intiailze. Don't think I want
to pass in variable when creating a coach.

To DO:
modify accept
modify release
 --- Both of the above would not actually work in reality.
=end  

