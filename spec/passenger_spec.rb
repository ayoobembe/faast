require "passenger"

describe Passenger do 
	let(:passenger){Passenger.new("Dale",20)}
	let(:station){double :station}


	context "Checking accessors" do 
		it "should exist when instantiated" do
			expect(passenger.nil?).to be false
		end

		it "should know if it's checked in" do
			expect(passenger.checked_in?).to be false
		end

		it "should know its account balance" do 
			expect(passenger.account_balance).to eq 20 
		end
	end

	context "Checking abilities" do 
		it "should be able to check into a station" do 
			expect(station).to receive(:check_in!).with(passenger)
			passenger.check_into(station)
		end

		it 'has a checked-in status after checking in' do
			allow(station).to receive(:check_in!).with(passenger)
			passenger.check_into(station)
			expect(passenger).to be_checked_in
		end

		it "should be able to check out of a station" do 
			expect(station).to receive(:check_out!).with(passenger)
			passenger.check_out_of(station)
		end

		it "has a checked-out status after checking in" do 
			allow(station).to receive(:check_out!).with(passenger)
			passenger.check_out_of(station)
			expect(passenger).not_to be_checked_in
		end

		it "should be able to pay fare from its account" do 
			expect(passenger.pay_fare!(4)).to eq 4
			expect(passenger.account_balance).to eq 16 
		end

		it "should be able to top up its account" do
			expect(passenger.top_up!(2)).to be true
			expect(passenger.account_balance).to eq 22 
			#why expect 22 rather than 18? Thought I modified
			#@account in previous test case.
		end










	end
end