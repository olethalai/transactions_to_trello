require 'rubygems'
require 'trello'

$default_board_name = ENV["BOARD"] || "TransactionTest"

Before do |scenario|
  # Configure Trello credentials for use
  Trello.configure do |config|
    config.developer_public_key = $trello_api_key
    config.member_token = $trello_token
  end
end
