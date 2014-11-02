require "coach"

describe Coach do 
	let(:coach){Coach.new}

	context "Accessors" do

		it "should exist when instantiated" do
			expect(coach.nil?).to be false
		end

		it "should know if it's empty" do 
			expect(coach.is_empty?).to be false
		end
	end	


	
end