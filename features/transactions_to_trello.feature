Feature: Ingest Santander Bill

  As a grown-up, I want to turn my credit card bill into Trello cards, so that I can visualise and categorise my expenditures.

  Scenario: An item on a bill becomes a Trello card object

    Given I have an item in my bill:
      | transaction                     | cost  | date      |
      | Asda Superstore Isle Of Dogs GB | 3.00  | 15th Apr  |
    When I ingest my bill
    Then I will see a card with the name "£3.00 - Asda Superstore Isle Of Dogs GB"

  Scenario: Tesco transactions are marked with a blue label

    Given I have an item in my bill:
      | transaction         | cost    | date      |
      | Tesco Stores London | 7.89    | 24th Apr   |
    When I ingest my bill
    Then the card for the "Tesco Stores London" transaction will have a blue label

  Scenario: Credit transactions are marked with a red label

    Given I have an item in my bill:
      | transaction       | cost    | date      |
      | Direct Debit Paid | -5.00   | 9th Apr   |
    When I ingest my bill
    Then the card for the "Direct Debit Paid" transaction will have a red label
