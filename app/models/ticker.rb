class Ticker < ActiveRecord::Base
    belongs_to :exchange

    # Validações
    validates :exchange_id, uniqueness: true
end
