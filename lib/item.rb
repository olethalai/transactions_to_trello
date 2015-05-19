class Item

  attr_reader :date, :transaction, :cost

  def initialize(date, transaction, cost)
    @date = date.strip
    @transaction = transaction.strip
    @cost = ingest_cost(cost.strip)
  end

  def ingest_cost(cost_descriptor)
    if cost_descriptor.match(/^CR /)
      cost_string = cost_descriptor.sub("CR ", "-")
    end
    cost_string ||= cost_descriptor
    cost_string
  end

end
