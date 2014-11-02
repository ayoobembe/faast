require "train"

describe Train do 
	let(:station){double :Station}
	let(:train){Train.new(station)}
	context "Attributes:" do 

		it "should exist when initialized" do 
			expect(train.nil?).to be false
		end

		it "should have a location" do
			expect(train.location?).to eq station
		end

		it "should be either moving or stationary" do
			expect(train.moving?).to be false
			train.traverse(:origin,:destination)
			expect(train.moving?).to be true
		end

	end

	context "Abilities:" do  

		it "should be able to dock at its destination station" do 
			expect(station).to receive(:allow_in!).with(train)
			train.dock!(station)
		end

		it "modifies its location on docking at a new station " do 
			allow(station).to receive(:allow_in!).with(train)
			train.dock!(station)
			expect(train.location?).to be station
		end

=begin 
	can add/remove coaches
	can let in/let out passengers
	can interact with stations ...
	... what else
=end


	end
	
end