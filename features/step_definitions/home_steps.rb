Given("I am on the homepage") do
  visit "/"
end

Then('I should see "Welcome to the Calorie Tracker App"') do
  expect(page).to have_content("Welcome to the Calorie Tracker App")
end

Then('I should see a link to "About"') do
  expect(page).to have_link("About", href: "/about")
end

Then("I should see a login link") do
  expect(page).to have_link("Login", href: "/login")
end
