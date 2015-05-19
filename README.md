# Transactions to Trello

Transactions to Trello is a project created to ingest transactions from bills into a [Trello](https://trello.com) board for categorisation.

It was created using BDD with [Cucumber](https://cucumber.io) and [ruby-trello](https://github.com/jeremytregunna/ruby-trello).

Bills can be injested from a text file in the form:

    Transaction1Date
    Transaction1Name
    Transaction1Cost
    Transaction2Date
    Transaction2Name
    Transaction2Cost

A `keys.rb` file is required in the `support` directory, containing Trello authentication credentials.

    $trello_api_key = "YOUR_API_KEY"
    $trello_token = "YOUR_TOKEN"