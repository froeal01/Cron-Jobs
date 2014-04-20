class SubOrder < ActiveRecord::Base
	belongs_to :item
	has_one :order

	def calculate_cost(cost, quantity)
		(cost * quantity).round(2)
	end

end