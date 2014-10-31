require "passenger"

describe Passenger do 
	let(:passenger){Passenger.new("Ayo",100)}

	context "Object self-awareness tests"
		
		it "should exist when instantiated" do
			expect(passenger.nil?).to be false
		end

		it "should know if it's checked in" do
			expect(passenger.checked_in?). to be false
		end

		




	
end