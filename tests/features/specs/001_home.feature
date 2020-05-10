@homepage
Feature: Access the programation
    In order to access the SKY's programming
    As a new user
    I want to access the SKY's homepage and then to access SKY's programming guide

Scenario: Access SKYs programming guide
Given I am on the Homepage page
And I close the modal
When I click on the Programação link
Then I confirm that I am on the Programação page