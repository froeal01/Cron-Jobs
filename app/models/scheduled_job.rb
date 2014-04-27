require 'sidekiq/api'

class ScheduledJob < ActiveRecord::Base



	def self.failed(message, time)
		 new_job = ScheduledJob.new
		 new_job.job_status = message
		 new_job.completed_at = time
		 ActiveRecord::Base.transaction do
		 	new_job.save
		 end

	end

end
