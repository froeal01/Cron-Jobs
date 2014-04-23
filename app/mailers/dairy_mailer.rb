class DairyMailer < ActionMailer::Base
  default from: ENV["GMAIL_USERNAME"]

  def order_confirmation
  	mail(to: 'froeal01@gmail.com', subject: "Test This")
  end

end
