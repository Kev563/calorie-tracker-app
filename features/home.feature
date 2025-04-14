Feature: Home Page

  Scenario: Visitor sees homepage content
    Given I am on the homepage
    Then I should see "Welcome to the Calorie Tracker App"
    And I should see a link to "About"
    And I should see a login link
