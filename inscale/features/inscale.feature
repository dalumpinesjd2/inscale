@inscale
Feature: To Ensure that when I search keyword “topdanmark” at google, the first record that is displayed to me is not other than “topdanmark”
         To ensure that I can access https://www.topdanmark.dk from various browser (i.e. IE, Chrome, etc)

@scenario_1
  Scenario: To Ensure that when I search keyword “topdanmark” at google, the first record that is displayed to me is not other than “topdanmark”
    Given the user opens "https://www.google.com"
    When the user search for "topdanmark"
    Then first result should be "https://www.topdanmark.dk"

@scenario_2
   Scenario: To ensure that I can access https://www.topdanmark.dk from various browser (i.e. IE, Chrome, etc)
    Given the user opens "https://www.topdanmark.dk"
    Then user should be able to access the site