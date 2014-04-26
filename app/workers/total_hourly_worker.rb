require 'csv'

class TotalHourlyWorker
	include Sidekiq::Worker
	
	sidekiq_options :retry => 3

	sidekiq_retries_exhausted do |msg|
     ScheduledJob.create("Failed #{msg['class']} with #{msg['args']}: #{msg['error_message']}",Time.now)
  end
  
	def perform
		hourly_amount = Order.where("status = ? AND completed_at between ? and ?", 0, 1.hour.ago ,Time.new).sum(:total)
		HourlyRevenue.create(hourly_amount,Time.now)
	end


end