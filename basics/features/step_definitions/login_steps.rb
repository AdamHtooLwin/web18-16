Given(/^I am a registered user/) do
  @user = FactoryBot.create :user
end

When("I visit the login page") do
  visit '/users/sign_in'
end

Then("I should see a form to sign in") do
  expect(page).to have_selector('form#new_user')
end

When("I submit the login form") do
  fill_in('Email', with: "a@c.com")
  fill_in('Password', with: "secret")
  click_on('Log in')
end

Then("I should be redirected to the login root page") do
  expect(page).to have_content('Problem Sets Basics')
end

And("I should see I am signed in after login") do
  expect(page).to have_content('a@c.com')
end
