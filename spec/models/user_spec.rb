require 'spec_helper'

describe User do
	describe FactoryGirl do 
	  it "has a valid factory" do 
	  	FactoryGirl.create(:user).should be_valid
	  end
	end

end
