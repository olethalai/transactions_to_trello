Given(/^I have (?:an item|items) in my bill:$/) do |table|
  @bill = create_bill_from_table(table)
end

When(/^I ingest my bill$/) do
  ingest_bill(@bill)
end

Then(/^I will see at least (\d+) cards? on my board$/) do |n|
  board = get_board
  count = board.cards.count
  assert(n <= count, "Expected at least #{n} cards, but found #{count} cards")
end

Then(/^I will see a card with the name "(.*?)"$/) do |name|
  board = get_board
  match = false
  board.cards.each do |card|
    if card.name == name
      match = true
      break
    end
  end
  assert(match)
end

Then(/^the card for the "(.*?)" transaction will have a (blue|red) label$/) do |transaction, colour|
  board = get_board
  transaction_card = nil
  board.cards.each do |card|
    if card.name.match(transaction)
      transaction_card = card
    end
  end
  label_match_found = false
  transaction_card.card_labels.each do |label|
    if label["color"] == colour
      label_match_found = true
      break
    end
  end
  assert_equal(true, label_match_found)
end
