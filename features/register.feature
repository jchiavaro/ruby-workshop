Feature: User can register to the site

Scenario: Add user
    Given I am on the home page
    When I follow "register user"
    Then I should be on the "register user page"
    When I fill in "Username" "newuser@ruby.org" and "Password" "top_secret"
    And I press "Register"
    Then I should see the message "User created successfully"
