class SubOrdersController < ApplicationController

	def new
		@item	= Item.find(params["item_id"])
		@sub_order = @item.sub_orders.build
		@sub_order_cost = @sub_order.calculate_cost(@item.cost, @sub_order.quantity)
	end

	def create
		if current_order
			current_order.sub_orders << SubOrder.create(sub_order_params)
		else
			new_order	= Order.create
			session[:order_id] = new_order.id
			new_order.sub_orders << SubOrder.create(sub_order_params)
		end
		flash[:notice] = "Item added to Cart"
		redirect_to items_path
	end


	private 

	def sub_order_params
		params.require(:sub_order).permit(:cost, :quantity, :item_id)
	end

end