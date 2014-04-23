class TotalHourlyWorker
	include Sidekiq::Worker

	def perform
		sum	= Order.where("status = ? AND completed_at < ? && > ?", completed, 1.hour.ago ,Time.new).sum(:total)
	end


end