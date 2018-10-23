Feature: User Registration

  I, an unregistered user, wants to sign up for the website in order to be able to use it.

  Scenario: Register a new user

    An unregistered user should be able to register into the database.

    When I visit the registration page
    Then I should see a form to register
    When I submit the form
    Then I should be redirected to the root page