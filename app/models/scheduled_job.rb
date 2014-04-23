require 'sidekiq/api'

class ScheduledJob < ActiveRecord::Base


	def self.send_weekly_email
		User.all.each do |user|
			WeeklyEmailWorker.perform_async(user.email)
		end 
	end

	def sidekiq_stats
		summary = Hash.new
		stats = Sidekiq::Stats.new
		summary = { processed: stats.processed, failed: stats.failed, enqueued: stats.enqueued, queues: stats.queues}
	end

end
