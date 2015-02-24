class AddExchangeToTicker < ActiveRecord::Migration
  def change
    change_table :tickers do |t|
      t.belongs_to :exchange, index: true
    end
  end
end
