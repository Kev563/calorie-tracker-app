Given("I am on the food log page") do
  visit "/foodlog"
end

When("I fill in the food name and calories") do
  fill_in "Name", with: "Banana"
  fill_in "Calories (kcal)", with: 90
end

When('I click on "Add Food"') do
  click_button "Add Food"
end

Then("I should see the food listed in the table") do
  expect(page).to have_content("Banana")
  expect(page).to have_content("90 kcal")
end

When("I click on Delete for that food") do
  find("tr", text: "Banana").click_link("Delete")
end

Then("I should no longer see the food in the table") do
  expect(page).not_to have_content("Banana")
end
