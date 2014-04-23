class ScheduledJob < ActiveRecord::Base
	require 'sidekiq/api'


	def sidekiq_stats
		summary = Hash.new
		stats = Sidekiq::Stats.new
		binding.pry
		summary = { processed: stats.processed, failed: stats.failed, enqueued: stats.enqueued, queues: stats.queues}
	end

end
