class CheckoutsController < ApplicationController

	def new
	  @current_order	= current_order
	end

end