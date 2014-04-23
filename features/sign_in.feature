Feature: Sigining In
 In order to have a better user experience
 As a user
 I want to be able to log in


 Scenario: Sign in from the root page
  Given I am on the home page
  And I am not signed in
  And I click on Login
  And I view the signin page
  When I fill in valid information 
  Then I should see welcome