def item_in_cart
	visit('/items')
	click_link_or_button("Read More")
	click_link_or_button("Purchase")
	click_link_or_button("Add Item to Cart")
end


Given(/^I have an item in my cart$/) do
  item_in_cart
end

Given(/^I click checkout$/) do
  click_link_or_button("Cart")
end

