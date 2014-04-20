class Order < ActiveRecord::Base
	has_many :user_orders
	has_many :users, through: :user_orders
	has_many :sub_orders





	def sum_costs
		@sub_orders = self.sub_orders
		@sub_orders.sum(:cost)
	end
	
	

end
