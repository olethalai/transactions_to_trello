require_relative "item"
require_relative "trello_api_caller"
require_relative "trello_card"

class BillIngestor

  def initialize(board)
    @board = board
  end

  def ingest(bill)
    @trello = TrelloAPICaller.new
    items = get_items_from_bill(bill)
    items.each do |item|
      create_card_for_item(item)
    end
    @board
  end

  def get_items_from_bill(bill)
    items = []
    # While there are bill items...
    while this_date = bill.gets
      this_transaction = bill.gets
      this_cost = bill.gets
      items.push(Item.new(this_date, this_transaction, this_cost))
    end
    items
  end

  def create_card_for_item(item)
    card = TrelloCard.new(item)
    @trello.create_card_on_board(@board, card)
  end

end
