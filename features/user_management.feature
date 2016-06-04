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
    # Then I should see "Welcome! You have signed up successfully."

    Scenario: As a registered user
      Given I am on the "home page"
      And I click on the "Login" button
      And I fill in "Email" with "daniel@gmail.com"
      And I fill in "Password" with "password"
      And I click on the "Log in" button
    # Then I should see "Signed in successfully"

    Scenario: Sign up, password leangt validation
      Given I am on the "home page"
      And I click on the "Sign up" button
      And I fill in "user_email" with "daniel@gmail.com"
      And I fill in "user_password" with "1234567"
      And I fill in "user_password_confirmation" with "1234567"
      And I click on the "Create" button
      Then I should see "Password is too short"

    Scenario: Sign up, Different passwords
      Given I am on the "home page"
      And I click on the "Sign up" button
      And I fill in "user_email" with "daniel@gmail.com"
      And I fill in "user_password" with "12345678"
      And I fill in "user_password_confirmation" with "1234567"
      And I click on the "Create" button
      Then I should see "Password confirmation doesn't match Password"

    Scenario: Allows a visitor see a link to the registration page, the forgotten password page  and a remember me checkbox on the sign up page
      Given I am on the "home page"
      And I click on the "Login" button
      Then I should see "Sign up" link
      And I should see "Forgot your password?" link
      And I should see a "Remember me" checkbox

    Scenario: So that I understand that I have logged in successfully
      Given I am on the "home page"
      And I click on the "Login" button
      And I fill in "Email" with "daniel@gmail.com"
      And I fill in "Password" with "password"
      And I click on the "Log in" button
    # Then I should see "Signed in successfully"

    Scenario: So that I can access my account even if i forgot the password
      Given I am on the "home page"
      And I click on the "Login" button
      Then I should see "Forgot your password?" link
      And I click on the "Forgot your password?" button
      And I fill in "Email" with "daniel@gmail.com"
      And I click on the "Send me reset password instructions" button
      Then I should see "You will receive an email with instructions on how to reset your password in a few minutes"

    Scenario: Forgotten password - email not found
      Given I am on the "Forgot password page"
      And I fill in "Email" with "test@hotmail.com"
      And I click on the "Send me reset password instructions" button
      Then I should see "Email not found"

    Scenario: Forgotten password - email blank
      Given I am on the "Forgot password page"
      And I fill in "Email" with ""
      And I click on the "Send me reset password instructions" button
      Then I should see "Email can't be blank"

    Scenario: Email must not be blank
      Given I am on the "sign up page"
      And I fill in "Email" with ""
      And I fill in "Password" with "12345678"
      And I fill in "Password confirmation" with "12345678"
      And I click on the "Create" button
      Then I should see "Email can't be blank"

    Scenario: Password must not be blank
      Given I am on the "sign up page"
      And I fill in "Email" with "testperson@gmail.com"
      And I fill in "Password" with ""
      And I fill in "Password confirmation" with ""
      And I click on the "Create" button
      Then I should see "Password can't be blank"

    Scenario: Email must not be duplicate
      Given I am on the "sign up page"
      And I fill in "Email" with "daniel@gmail.com"
      And I fill in "Password" with "12345678"
      And I fill in "Password confirmation" with "12345678"
      And I click on the "Create" button
      Then I should see "Email has already been taken"
