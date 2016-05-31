Feature: As a visitor
  So that I can engage with the service
  I would like to be able to sign up using facebook or with my email

Background:
  Given following users exists
    | name   | email            | password |
    | Calle  | calle@gmail.com  | password |
    | Daniel | daniel@gmail.com | password |
    | Jenny  | jenny@gmail.com | password |

Scenario: Allows a visitor to see text Welcome
  Given I am on the "home page"
  Then I should see "Welcome"

  Scenario: Allows a visitor to see Sign up and Login link
      Given I am on the "home page"
      Then I should see "Sign up" link
      And I should see "Login" link

    Scenario: Allows a visitor to access a registration page
      Given I am on the "home page"
      And I click on the "Sign up" link
      Then I should be on the "sign up page"

    Scenario: Allows a visitor to access a login page
      Given I am on the "home page"
      And I click on the "Login" link
      Then I should be on the "login page"

    Scenario: Allows a visitor to register as a user
      Given I am on the "home page"
      And I click on the "Sign up" link
      Then I should be on the "sign up page"
      And I fill in "user_email" with "yan@gmail.com"
      And I fill in "user_password" with "password"
      And I fill in "user_password_confirmation" with "password"
      And I click on the "Create" button
      Then I should see "Welcome! You have signed up successfully."

    Scenario: As a registered user
      Given I am on the "home page"
      And I click on the "Login" button
      And I fill in "Email" with "daniel@gmail.com"
      And I fill in "Password" with "password"
      And I click on the "Log in" button
      Then I should see "Signed in successfully"
