class CheckoutsController < ApplicationController

	def new
	  @current_order	= current_order
	end

	def create
		binding.pry
		 finished_order = PaymentGem.new(params[:order][:stripe_customer_token],current_order.total).payment_saved?
		if finished_order
			redirect_to checkout_confirmation_path(SecureRandom.urlsafe_base64)
		else
			flash[:error] = "Your payment was not processed at this time."
			redirect_to :back
		end
	end

	def update

	end

	def show
		@id = params[:token]
	end

end