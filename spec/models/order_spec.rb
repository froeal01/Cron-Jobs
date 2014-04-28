require 'spec_helper'

describe Order do
  let(:order) {FactoryGirl.create(:order)}
  
  describe "completed order" do 

  	it "should change the order status to 1" do 
  		order.set_check_out_date
  		expect(order.status).to eq("complete")
  	end
  end
end
