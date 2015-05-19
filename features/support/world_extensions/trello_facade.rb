module TrelloFacade

  def get_board
    @board ||= Trello::Board.all.select { |board| board.name == $default_board_name }.first
  end

end

World(TrelloFacade)
