Feature: BMI Calculator

  Scenario: User calculates BMI and gets a calorie recommendation
    Given I am on the calculator page
    When I enter my height, weight, age, gender, goal weight, and time frame
    And I click on "Calculate"
    Then I should see my BMI result
    And I should see my daily calorie intake recommendation
