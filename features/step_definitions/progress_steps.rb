Given("I am on the progress page") do
  visit "/progress"
end

When("I enter {string} for calories eaten") do |calories|
  fill_in "Calories Eaten (kcal)", with: calories
end

When("I enter {string} for goal calories") do |goal|
  fill_in "Goal Calories (kcal)", with: goal
end

When("I leave the calories eaten field empty") do
  fill_in "Calories Eaten (kcal)", with: ""
end

When("I leave the goal calories field empty") do
  fill_in "Goal Calories (kcal)", with: ""
end

When("I click {string}") do |button|
  click_button button
end

Then("I should see a success message") do
  expect(page).to have_content("Progress added!")
end

Then("I should see an error message") do
  expect(page).to have_content("Please fill in all fields")
end

Then("I should see my progress chart updated") do
  expect(page).to have_css(".chart") # adjust selector if needed
end
