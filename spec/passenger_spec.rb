require "passenger"

describe Passenger do 
	let(:passenger){Passenger.new("Dale",100)}
	let(:station){double :station, :check_in! => true}


	context "Checking accessors" do 
		it "should exist when instantiated" do
			expect(passenger.nil?).to be false
		end

		it "should know if it's checked in" do
			expect(passenger.checked_in?).to be false
		end

		it "should know its account balance" do 
			expect(passenger.account_balance).to eq 100 
		end
	end


	context "Checking abilities" do 
		it "should be able to check into a station" do 
			#expect(station).to receive(:check_in!)
			passenger.check_into(station)
			expect(passenger.checked_in?).to be true
			#to do: program station double to return true
		end




	end
end