When("I go to the BMI Calculator page") do
  visit "/calculator"
end

When("I enter my height, weight, age, gender, goal weight, and time frame") do
  fill_in "Height", with: 170
  fill_in "Weight", with: 75
  fill_in "Age", with: 25
  choose "Male"
  fill_in "Goal Weight", with: 68
  fill_in "Time Frame", with: 30
end

When("I click on \"Calculate\"") do
  click_button "Calculate"
end

Then("I should see my BMI result") do
  expect(page).to have_content("Your BMI is")
end

Then("I should see my daily calorie intake recommendation") do
  expect(page).to have_content("You should consume")
end
