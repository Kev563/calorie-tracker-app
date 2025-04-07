When("I go to the food input page") do
  visit "/foodlog"
end

When("I enter {string} and {string}") do |food, calories|
  fill_in "Food", with: food
  fill_in "Calories", with: calories
end

When("I click {string}") do |button|
  click_button button
end

Then("I should see {string} in my food log") do |entry|
  expect(page).to have_content(entry)
end

Then("my remaining calories for the day should be updated") do
  expect(page).to have_content("Calories left")
end

When("I select {string} from suggested foods") do |food|
  select food, from: "Suggested Foods"
end

Then("the calorie field should auto-fill with {string}") do |calories|
  expect(find_field("Calories").value).to eq(calories)
end

Then("I can add it to my daily log") do
  click_button "Add"
end
