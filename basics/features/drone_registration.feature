Feature: Drone Registration

  I, as a user of this app, would like to register/create a new drone to the system to be able to track it.

  Scenario: Register a drone and view registered drones
    Given I am a registered user
    When I visit the drone registration page
    Then I should see a form to register the drone
    When I submit the drone form
    Then I should be redirected to the drone list page
    And I should see the registered drone
