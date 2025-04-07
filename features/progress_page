Feature: Calorie Progress Page

Scenario: User views current progress
  Given I am logged in
  When I visit the progress page
  Then I should see my current calorie intake
  And I should see my daily calorie goal
  And I should see a visual chart of my progress

Scenario: No progress yet
  Given I am a new user
  When I visit the progress page
  Then I should see a message that says "No data yet"
