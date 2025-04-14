When("I enter my height, weight, age, gender, goal weight, and time frame") do
  visit "/calculator"
  fill_in "height", with: 170
  fill_in "weight", with: 70
  fill_in "age", with: 25
  select "Male", from: "gender"
  fill_in "goal_weight", with: 65
  fill_in "time_frame", with: 30
end

When('I click on "Calculate"') do
  click_button "Calculate"
end

Then("I should see my BMI result") do
  expect(page).to have_content("Your BMI is")
end

Then("I should see my daily calorie intake recommendation") do
  expect(page).to have_content("You should consume")
end
