Feature: Ingest Santander Bill

  As a grown-up, I want to turn my credit card bill into Trello cards, so that I can visualise and categorise my expenditures.

  Scenario: An item on a bill becomes a Trello card object

    Given I have at least 1 item on my bill
    When I ingest my bill
    Then I will see at least 1 card on my board
