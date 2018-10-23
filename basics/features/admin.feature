Feature: Admin User Management

  I, as an admin super user, wants to be able to view all registered users, ban any user, and see user registration
  \statistic

  Scenario: View all registered users

    Given I am an admin user
    When I visit the User Management page
    Then I should see a list of users with respective registration data

  Scenario: Ban a user

    Given I am an admin user
    When I visit the User Management page
    Then I should see a ban button for each user
    And I should be able to ban a user

  Scenario: View registration statistics
    Given I am an admin user
    When I visit the User Management page
    Then I should see a link to the registration statistics page
    When I visit the statistics page
    Then I should see some statistics