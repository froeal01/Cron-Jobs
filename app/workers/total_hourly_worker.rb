class TotalHourlyWorker
	include Sidekiq::Worker
	
	sidekiq_options :retry => 3

	sidekiq_retries_exhausted do |msg|
     ScheduledJob.new("Failed #{msg['class']} with #{msg['args']}: #{msg['error_message']}",Time.now).log_error
  end
  
	def perform
		 logger = Logger.new('hourly_revenue.log')
			logger.info Order.where("status = ? AND completed_at between ? and ?", 0, 1.hour.ago ,Time.new).sum(:total)
	end


end