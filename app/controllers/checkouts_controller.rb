class CheckoutsController < ApplicationController

	def new
	  @current_order	= current_order
	end

	def create
		 finished_order = PaymentGem.new(params[:order][:stripe_customer_token],current_order.total).process_payment
		if finished_order
			ConfirmationEmailWorker.perform_async
			current_order.set_check_out_date
			session.delete(:order_id)
			redirect_to checkout_confirmation_path(SecureRandom.urlsafe_base64)
		else
			flash[:notice] = "Your payment was not processed at this time."
			render "new"
		end
	end

	def update

	end

	def show
		@id = params[:token]
	end

end