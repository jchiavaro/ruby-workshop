Feature: User can register to the site

Scenario: Add user
    Given I am on the home page
    When I follow register user
    Then I should be on the register user page
    When I fill in username with "newuser@ruby.org" and password with "top_secret"
    And I press Register
    Then I should see the message "newuser@ruby.org" created successfully
