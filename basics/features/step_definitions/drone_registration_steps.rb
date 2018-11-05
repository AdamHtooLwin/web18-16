When("I visit the drone registration page") do
  visit '/ps5/drone_registration'
end

Then("I should see a form to register the drone") do
  expect(page).to have_selector('form#registration_form')
end

When("I submit the drone form") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should be redirected to the drone list page") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should see the registered drone") do
  pending # Write code here that turns the phrase above into concrete actions
end
