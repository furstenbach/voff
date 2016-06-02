@javascript
Feature: stripe payment
    As a user
    I would like to be able to pay

    Background:
        Given I am on the "payment page"

    Scenario: Dog owner wants to pay for dog sitting
        Given I press the "Pay with Card" button
        Then I should see the "Pay" button
