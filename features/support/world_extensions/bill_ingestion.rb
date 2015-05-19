require_relative "../../../lib/bill_ingestor"

module BillIngestion

  def ingest_bill(bill)
    @board = get_board
    ingestor = BillIngestor.new(@board)
    ingestor.ingest(bill)
  end

  def create_bill_from_table(table)
    data = table.hashes
    File.open($dynamic_bill_filepath, "w+") do |file|
      data.each do |row|
        file.puts(row["date"])
        file.puts(row["transaction"])
        file.puts(row["cost"])
      end
    end
    # Return the file
    File.open($dynamic_bill_filepath, "r")
  end

end

World(BillIngestion)
