Feature: Welcome and Login Page

Scenario: Visitor views the homepage
  Given I am a visitor
  When I visit the homepage
  Then I should see a welcome message
  And I should see a link to the About page
  And I should see a login form

Scenario: New user signs up
  Given I am a visitor
  When I click on "Sign up"
  And I fill in my user information
  And I submit the form
  Then I should be redirected to my dashboard
  And I should see a success message

Scenario: Returning user logs in
  Given I am a registered user
  When I fill in my username and password
  And I click on "Login"
  Then I should be redirected to my calorie tracking page
  And I should see my current progress
