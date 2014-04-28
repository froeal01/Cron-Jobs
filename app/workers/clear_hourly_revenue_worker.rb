class ClearHourlyRevenueWorker
	include Sidekiq::Worker

	def perform
		HourlyRevenue.all.each do |each_hour|
			each_hour.delete
		end
	end



end