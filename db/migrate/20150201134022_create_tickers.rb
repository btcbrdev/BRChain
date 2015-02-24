class CreateTickers < ActiveRecord::Migration
  def change
    create_table :tickers do |t|
      t.string :url
      t.float :high
      t.float :low
      t.float :last
      t.float :volume
      t.float :buy
      t.float :sell

      t.timestamps null: false
    end
  end
end
