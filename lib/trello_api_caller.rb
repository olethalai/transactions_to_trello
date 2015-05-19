require 'rubygems'
require 'trello'

class TrelloAPICaller

  def create_card_on_board(board, card)
    # Get the ID of the list you want to add the card to
    list = board.lists.first
    # Create the card on the list
    card = Trello::Card.create({
      list_id: list.id,
      name: card.name,
      desc: card.description,
      member_ids: card.member_ids,
      card_labels: card.card_labels,
      due: card.due_date,
      pos: card.position
    })
  end

end
