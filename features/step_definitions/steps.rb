Given(/^I am on the home page$/) do
  visit('/')
end

Given(/^I am not signed in$/) do
  page.has_content?('LogIn')
end

Given(/^I click on (.*)$/) do |arg1|
	click_link "#{arg1}"
end

Given(/^I view the signin page$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I fill in valid information$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see welcome$/) do
  pending # express the regexp above with the code you wish you had
end