require 'spec_helper'

describe User do

	describe "FactoryGirl" do 
	  it "has a valid factory" do 
	  	FactoryGirl.create(:user).should be_valid
	  end
	end

	describe "emails" do 
		let(:user) {FactoryGirl.create(:user)}
		it "sends confirmation email" do
			expect {user.confirmation_email}.to change{ Sidekiq::Extensions::DelayedMailer.jobs.size }.by(1)
		end
	end

end
