When("I visit the registration page") do
  visit '/users/sign_up'
end

Then("I should see a form to register") do
  expect(page).to have_selector('form#new_user')
end

When("I submit the form") do
  fill_in('Email', with: "a@c.com")
  fill_in('Password', with: "secret")
  fill_in('Password confirmation', with: "secret")
  click_on('Sign up')
end

Then("I should be redirected to the root page after registration") do
  expect(page).to have_content('Problem Sets Basics')
end

And("I should see I am signed in after registration") do
  expect(page).to have_content('a@c.com')
end

