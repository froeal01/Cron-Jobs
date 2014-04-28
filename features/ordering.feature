Feature: Ordering Items
	As a User I want to be able to order Item
	And know that the order is associated with me

	Background:
		Given I have an item in my cart

	Scenario: Not be able to checkout if not signed in
		Given I click checkout
		Then I should see Sign In