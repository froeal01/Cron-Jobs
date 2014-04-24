class PaymentGem


	def initialize(gateway = Stripe::Charge, token, amount )
		@gateway = gateway
		@stripe_customer_token = token
		@amount = amount
	end

	def process_payment
		begin
		 new_charge = @gateway.create(card: @stripe_customer_token, amount: @amount, currency: "usd" )
		 return new_charge
	
			rescue Stripe::InvalidRequestError => e
			logger = Logger.new("stripe.log")
			logger.error "Stripe error #{e.message}"
			false
		end
	end

end