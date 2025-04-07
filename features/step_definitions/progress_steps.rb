Given("I am logged in") do
  # Placeholder — implement login logic if needed
  visit "/progress"
end

When("I visit the progress page") do
  visit "/progress"
end

Then("I should see my current calorie intake") do
  expect(page).to have_content("Calorie Intake")
end

Then("I should see my daily calorie goal") do
  expect(page).to have_content("Daily Goal")
end

Then("I should see a visual chart of my progress") do
  expect(page).to have_selector("canvas, svg, img") # depends on how you implement chart
end

Then("I should see a message that says \"No data yet\"") do
  expect(page).to have_content("No data yet")
end
