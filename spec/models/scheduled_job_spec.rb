require 'spec_helper'

describe ScheduledJob do
 job_id = "1234"
 status = "complete"

	describe "#record" do 
		it "should save with valid information" do 
			expect{ScheduledJob.record(status,job_id)}.to change(ScheduledJob, :count).by(1)
		end	
	end

	describe "#failed" do
		message = "failed"
		time = Time.now
		
		it "should save with valid information" do
			expect{ScheduledJob.failed(message,time)}.to change(ScheduledJob, :count).by(1)
		end
	end
end
