class RemoveUrlFromTickers < ActiveRecord::Migration
  def change
    remove_column :tickers, :url, :string
  end
end
