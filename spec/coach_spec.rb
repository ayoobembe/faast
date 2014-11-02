require "coach"

describe Coach do 
	let(:coach){Coach.new}
	let(:passenger){double :Passenger}

	context "Accessors:" do

		it "should exist when instantiated" do
			expect(coach.nil?).to be false
		end

		it "should know if it's empty" do 
			expect(coach.is_empty?).to be true
		end

		it "should know how many passengers are on board" do
			expect(coach.passengers_num).to eq 0
		end

	end	

	context "Abilities:" do 

		it "should be able to accept passengers" do 
			expect(coach.accept(passenger)).to be true
		end

		it "should increment number of passengers on accepting more" do 
			allow(coach).to receive(:accept).with(passenger)
			coach.accept(passenger)
			expect(coach.passengers_num).to eq 1
		end

	end
	
end