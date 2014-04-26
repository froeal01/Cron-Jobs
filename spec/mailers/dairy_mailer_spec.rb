require "spec_helper"

describe DairyMailer do
 describe "DairyMailer#order_confirmation" do 
 	let(:mail) {DairyMailer.order_confirmation}
 	it "renders the subject" do 
 		expect(mail.subject).to eq("Test This")
	end
	it "renders the user's email" do 
		expect(mail.to).to eq(["froeal01@gmail.com"])
	end
	it "renders the sender's email" do 
		expect(mail.from).to eq([ENV["GMAIL_USERNAME"]])
	end
 end
end
