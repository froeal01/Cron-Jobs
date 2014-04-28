class DairyMailer < ActionMailer::Base
  default from: ENV["GMAIL_USERNAME"]

  def order_confirmation
    	mail(to: "froeal01@gmail.com", subject: "Test This")
  end

  def weekly_email(user_email)
  	mail(to:"#{user_email}", subject: "Weekly Discounts")
	end
	
end
