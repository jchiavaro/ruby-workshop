Feature: View all users

Scenario: list all users
    Given I am on the home page
    And the following users exist:
      |username|
      | scott |
      | chris |
      | casey |
    When I click on view users
    Then I should see the list with the following users:
      |scott|
      |chris|
      |casey|
