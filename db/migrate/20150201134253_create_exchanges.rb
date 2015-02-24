class CreateExchanges < ActiveRecord::Migration
  def change
    create_table :exchanges do |t|
      t.string :name
      t.string :home_url
      t.string :documentation_url

      t.timestamps null: false
    end
  end
end
