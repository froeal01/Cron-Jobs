class SubOrder < ActiveRecord::Base
	belongs_to :item
	belongs_to :order

	def calculate_cost(cost, quantity)
		(cost * quantity).round(2)
	end

	def self.create(params)
		sub_order = SubOrder.new(params)
		return sub_order unless sub_order.valid?
		sub_order.cost = sub_order.calculate_cost(sub_order.cost, sub_order.quantity)
		ActiveRecord::Base.transaction do 
			sub_order.save!
			return sub_order
		end
	end

end