Feature: Maps pin
    So that I can see pinned positions
    I would like to be able to see the pins

@javascript
Scenario: User sees one pin on the map
    Given I am on the searchpage
    Then I should see a pin on the map
    
Scenario: User sees searched place on the page
    Given I am on the "home page"
    And I fill in "location" with "Stockholm"
    And I fill in "Date" with "2016-06-03"
    And I click on the "Search" button
    Then show me the page
    Then I should see "Stockholm 2016-06-03"