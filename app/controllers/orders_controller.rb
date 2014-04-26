class OrdersController < ApplicationController


	def index
		if current_order
			@items_in_order = current_order.sub_orders
			@total_cost = current_order.sum_costs
			@current_order = current_order
		else
			flash[:notice] = "Nothing currently in your Cart"
			redirect_to items_path
		end
	end


	def update

	end

	
end