Feature: Elevator operation

Scenario: Successful lifting of person in an elevator
Given: person is on the 1st floor in elevator
When: presses  button "5st floor"
Then: elevator goes up on 5st floor

Scenario: Successful descent of a person in an elevator
Given: person is on the 5st floor in elevator
When: presses  button "1st floor"
Then: elevator goes up on 1st floor

Scenario: Unsuccessful lifting of person in an elevator
Given: person is on the 1st floor in elevator
When: presses  button "5st floor"
Then: elevator goes up on 2st floor

