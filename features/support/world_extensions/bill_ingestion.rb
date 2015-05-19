require_relative "../../../lib/bill_ingestor"

module BillIngestion

  def ingest_bill(bill)
    @board = get_board
    ingestor = BillIngestor.new(@board)
    ingestor.ingest(bill)
  end

end

World(BillIngestion)
