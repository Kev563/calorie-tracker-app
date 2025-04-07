Feature: BMI and Calorie Goal Calculator

Scenario: User calculates BMI and calorie needs
  Given I am logged in
  When I go to the BMI Calculator page
  And I enter my height, weight, age, gender, goal weight, and time frame
  And I click on "Calculate"
  Then I should see my BMI result
  And I should see my daily calorie intake recommendation
