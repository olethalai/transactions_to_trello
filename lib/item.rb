class Item

  attr_reader :date, :transaction, :cost

  def initialize(date, transaction, cost)
    @date = date
    @transaction = transaction
    @cost = ingest_cost(cost)
  end

  def ingest_cost(cost_descriptor)
    if cost_descriptor.match(/^CR /)
      cost_string = cost_descriptor.sub("CR ", "-")
    end
    cost_string ||= cost_descriptor
    cost_string.to_f
  end

end
