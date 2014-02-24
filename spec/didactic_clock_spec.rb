require 'rspec'
require 'timecop'
require 'didactic_clock'

describe "Test time" do 
	before do 
		Timecop.freeze(Time.local(2008, 9, 1, 10, 5, 0))
	end

	after do 
		Timecop.return
	end

	it "should be September 1, 2008 10:05:00" do 
		time_keeper = DidacticClock::TimeKeeper.new
		time_keeper.verbose_time.should == "5 minutes past 10 o'clock, AM"
	end
end