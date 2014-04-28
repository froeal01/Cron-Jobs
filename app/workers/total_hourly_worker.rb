

class TotalHourlyWorker
	include Sidekiq::Worker
	

  
	def perform
		hourly_amount = Order.where("status = ? AND completed_at between ? and ?", 0, 1.hour.ago ,Time.new).sum(:total)
		HourlyRevenue.record(hourly_amount)
	end


end