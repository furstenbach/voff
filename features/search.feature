Feature: Maps pin
    So that I can see pinned positions
    I would like to be able to see the pins

    @javascript
    Scenario: User sees one pin on the map
        Given I am on the searchpage
        Then I should see a pin on the map
