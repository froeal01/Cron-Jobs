class Order < ActiveRecord::Base
	has_many :user_orders
	has_many :users, through: :user_orders
	has_many :sub_orders
	enum status: [:active, :complete]



	def sum_costs
		summed_cost = self.sub_orders.sum(:cost)
		self.total != summed_cost ? self.update_total_cost(summed_cost) : (return self.total)
	end
	
	def update_total_cost(new_cost)
		self.total = new_cost
		ActiveRecord::Base.transaction do
			self.save!
			return self.total
		end
	end

	def set_check_out_date
		self.completed_at = Time.new
		self.status = 1
		ActiveRecord::Base.transaction do
			self.save!
			return self.total
		end
	end

end
