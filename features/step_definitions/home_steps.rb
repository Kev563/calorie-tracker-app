Given("I am a visitor") do
  visit root_path
end

When("I visit the homepage") do
  visit root_path
end

Then("I should see a welcome message") do
  expect(page).to have_content("Welcome")
end

Then("I should see a link to the About page") do
  expect(page).to have_link("About", href: about_path)
end

Then("I should see a login form") do
  expect(page).to have_selector("form")
end
