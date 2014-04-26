require 'sidekiq/api'

class ScheduledJob < ActiveRecord::Base

	def initialize(failure, time)
		@failure = failure || nil
		@time = time || nil
	end


	def sidekiq_stats
		summary = Hash.new
		stats = Sidekiq::Stats.new
		summary = { processed: stats.processed, failed: stats.failed, enqueued: stats.enqueued, queues: stats.queues}
	end

	def log_failure

		self.job_status = @failure
		self.completed_at = @time
		self.save!
	end

end
