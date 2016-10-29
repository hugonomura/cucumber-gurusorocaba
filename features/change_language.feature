Feature: Change Language feature

Background:

Scenario Outline: Verifying if the links to change the language are working properly
  Given I open the gurusorocaba home page
  When I click on "<lang>" link
  Then I should see the page on "<lang>" language
  Examples:
    | lang  |
    | Pt-br |
    | En    |
