class TrelloCard

  attr_accessor :name, :description, :member_ids, :card_labels, :due_date, :position

  def initialize(item)
    @name = "£#{item.cost} - #{item.transaction}"
    @description = "#{item.date}"

    # Categorise easily identifiable purchases
    if item.transaction.match(/Tesco/)
      @card_labels = "blue"
    end

    # Mark credit transactions as red so that they are easily identifiable
    if item.cost.to_f < 0
      @card_labels = "red"
    end
  end

end
