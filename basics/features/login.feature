Feature: User Sign In

  I, a registered user, wants to sign in into the application.

  Scenario: Sign in an already registered user

    Given I am a registered user
    When I visit the login page
    Then I should see a form to sign in
    When I submit the login form
    Then I should be redirected to the login root page
    And I should see I am signed in after login