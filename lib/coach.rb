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

	def accept(passenger)
		@passengers.push(passenger)
		true
	end

end            


=begin  
remove variable take in from intiailze. Don't think I want
to pass in variable when creating a coach.

To DO:
modify accept

=end  

