Feature: Maps pin
    So that I can see pinned positions
    I would like to be able to see the pins

Background:
  Given that following dog sitters exist in the system
  |name             |address1             |zip    |city         |
  |Jenny            |Storgatan 1          |11444  |Stockholm    |
  |Yan              |Ostindiefararen 29   |41765  |Gothenburg   |
  |Calle            |kampementsgatan 14   |11538  |Stockholm    |
  |Daniel           |Vasagatan 36         |41124  |Gothenburg   |

@javascript
Scenario: User sees one pin on the map
    Given I am on the searchpage
    Then I should see a pin on the map

Scenario: User sees searched place on the page
    Given I am on the "home page"
    And I fill in "location" with "Stockholm"
    And I fill in "Date" with "2016-06-03"
    And I click on the "Search" button
    Then I should see "Stockholm 2016-06-03"

Scenario: User sees dogsitters places on the page
    Given I am on the "home page"
    And I fill in "location" with "Gotheburg"
    And I fill in "Date" with "2016-06-03"
    And I click on the "Search" button
  # Then I should see two pins on the map
