Feature: Food Log

  Scenario: User adds a new food item and sees it listed
    Given I am on the food log page
    When I fill in the food name and calories
    And I click on "Add Food"
    Then I should see the food listed in the table

  Scenario: User deletes a food item
    Given I am on the food log page
    When I fill in the food name and calories
    And I click on "Add Food"
    Then I should see the food listed in the table
    When I click on Delete for that food
    Then I should no longer see the food in the table
