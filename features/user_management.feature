Feature: As a visitor
  So that I can engage with the service
  I would like to be able to sign up using facebook or with my email

Background:
  Given following users exists
    | name   | email            | password |
    | Calle  | calle@gmail.com  | password |
    | Daniel | daniel@gmail.com | password |

Scenario: Allows a visitor to see text Welcome
  Given I am on the "home page"
  Then I should see "Welcome"
