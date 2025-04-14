Feature: Calorie Progress Logging

  As a user
  I want to log my calorie intake and goals
  So that I can track my progress toward my fitness goals

  Background:
    Given I am on the progress page

  Scenario: User logs valid progress
    When I enter "2200" for calories eaten
    And I enter "1800" for goal calories
    And I click "Save Progress"
    Then I should see a success message
    And I should see my progress chart updated

  Scenario: User submits form with missing data
    When I leave the calories eaten field empty
    And I enter "1800" for goal calories
    And I click "Save Progress"
    Then I should see an error message

  Scenario: User submits form with all fields empty
    When I leave the calories eaten field empty
    And I leave the goal calories field empty
    And I click "Save Progress"
    Then I should see an error message
