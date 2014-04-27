class HourlyRevenue < ActiveRecord::Base

	def self.record(amount)
		new_revenue	 = HourlyRevenue.new
		new_revenue.amount = amount
		new_revenue.hour = Time.now
		ActiveRecord::Base.transaction do 
			new_revenue.save
		end
	end
end