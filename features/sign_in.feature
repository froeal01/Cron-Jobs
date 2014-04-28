Feature: Sigining In
 In order to have a better user experience
 As a user
 I want to be able to log in


 Scenario: Sign in from the root page
  Given I am on the home page
  And I am not signed in
  And I click on Sign In
  And I fill in the user_email and user_password with valid information
  Then I should see "Signed in successfully"