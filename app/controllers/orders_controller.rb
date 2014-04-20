class OrdersController < ApplicationController


	def show
		@items_in_order = current_order.sub_orders
		@total_cost = current_order.sum_costs
	end


	def update

	end


end