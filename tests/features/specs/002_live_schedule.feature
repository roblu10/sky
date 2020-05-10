@live_schedule
Feature: See the live programming
    In order to see the live programming
    As a new user
    I want to see the live schedule list

Scenario: Clicking on a schedule item
Given I am on the Programação page
And I confirm the title and duration of the program
When I click on a live schedule item
Then I confirm that the schedule information is correct