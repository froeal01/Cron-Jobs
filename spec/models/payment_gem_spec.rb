require 'spec_helper'

describe PaymentGem do 
	before {StripeMock.start}
	after {StripeMock.stop}

	describe "Stripe Payment" do
		let(:card_token) {StripeMock.generate_card_token(last4: "4242", exp_year: 2017)}
		let(:token)  {Stripe::Charge.create(card: card_token)}

		it "generates a stripe token" do 
		 	expect(token).to_not be_nil
		end
	end

	describe "Invalid Payment" do

		it "should be a stripe error" do 
			StripeMock.prepare_card_error(:card_declined)
			expect { Stripe::Charge.create }.to raise_error {|e|
    	expect(e).to be_a Stripe::CardError
    	expect(e.http_status).to eq(402)
    	expect(e.code).to eq('card_declined')
  	}
		end
	end
end