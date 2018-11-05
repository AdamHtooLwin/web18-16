When("I visit the drone registration page") do
  visit '/ps5/drone_registration'
end

Then("I should see a form to register the drone") do
  expect(page).to have_selector('form#registration_form')
end

Given("I have a drone") do
  @drone = FactoryBot.create :drone
end

When("I submit the drone form") do
  fill_in('Name', with: "Orion")
  click_on('Register')
end

Then("I should be redirected to the drone list page") do
  expect(page).to have_content('Drones')
end

Then("I should see the registered drone") do
  expect(page).to have_content('Orion')
end
