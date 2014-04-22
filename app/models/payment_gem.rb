class PaymentGem


	def initialize(gateway = Stripe::Charge, token, amount )
		@gateway = gateway
		@stripe_customer_token = token
		@amount = amount
	end

	def payment_saved?
		begin
			binding.pry
		 new_charge = @gateway.create(card: @stripe_customer_token, amount: @amount, currency: "usd" )
		 return new_charge
	
			rescue Stripe::InvalidRequestError => e
			logger = Logger.new("stripe.log")
			logger.error "Stripe error #{e.message}"
			errors.add :base, "There was an issue with your Credit Card."
			false
		end
	end

end