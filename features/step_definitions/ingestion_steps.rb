Given(/^I have at least 1 item on my bill$/) do
  @bill = File.open("bills/bill_1.txt")
end

When(/^I ingest my bill$/) do
  ingest_bill(@bill)
end

Then(/^I will see at least 1 card on my board$/) do
  board = get_board
  assert(1 <= board.cards.count)
end
