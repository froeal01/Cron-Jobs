def valid_user
	@user ||= FactoryGirl.create(:user)
end



Given(/^I am on the home page$/) do
  visit('/')
end

And(/^I am not signed in$/) do
  page.has_content?('LogIn')
end

And(/^I click on (.*)$/) do |arg1|
	click_link_or_button("#{arg1}")
end


And(/^I fill in the (.*) and (.*) with valid information$/) do |arg1, arg2|
  valid_user
  fill_in "#{arg1}", with: @user.email
	fill_in	"#{arg2}", with: @user.password
end

Then(/^I should see (.*)$/) do |arg1|
  page.has_content?("#{arg1}")
end