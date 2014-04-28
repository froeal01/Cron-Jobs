require 'sidekiq/api'

class ScheduledJob < ActiveRecord::Base

	def self.record(status, job_id)
		new_job = ScheduledJob.new
		new_job.job_status, new_job.job_id, new_job.completed_at = status,job_id, Time.now
		ActiveRecord::Base.transaction do 
			new_job.save
		end
	end

	def self.failed(message, time)
		 new_job = ScheduledJob.new
		 new_job.job_status = message
		 new_job.completed_at = time
		 ActiveRecord::Base.transaction do
		 	new_job.save
		 end

	end

end
