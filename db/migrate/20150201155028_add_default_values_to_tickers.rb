class AddDefaultValuesToTickers < ActiveRecord::Migration
  def change

    # Modificando valores padrão dos tickers
    change_column_default :tickers, :high, 0.0
    change_column_default :tickers, :low, 0.0
    change_column_default :tickers, :last, 0.0
    change_column_default :tickers, :volume, 0.0
    change_column_default :tickers, :sell, 0.0
    change_column_default :tickers, :buy, 0.0

  end
end
