require 'sidekiq/api'

class ScheduledJob < ActiveRecord::Base




	def sidekiq_stats
		summary = Hash.new
		stats = Sidekiq::Stats.new
		summary = { processed: stats.processed, failed: stats.failed, enqueued: stats.enqueued, queues: stats.queues}
	end

end
